#include "conversion.h"
#include "copy.h"
#include "error.h"
#include <arpa/inet.h>
#include <assert.h>
#include <errno.h>
#include <netinet/in.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include "wiringPi.h"
#include "wpiExtensions.h"
#include <bits/types/struct_timeval.h>
#include <bits/types/sig_atomic_t.h>

#define BUF_SIZE 1024
#define DEFAULT_PORT 5020
#define ButtonPin 1

// Tracking Ip and port information for client and ser server.
struct options
{
    char *ip_client;
    char *ip_receiver;
    in_port_t port_receiver; // special type for output port.
    struct sockaddr_in server_addr; // special type for
    int fd_in;
};

// Prototypes of functions.
static volatile sig_atomic_t running;   // NOLINT(cppcoreguidelines-avoid-non-const-global-variables)
static void options_init(struct options *opts);
static void parse_arguments(int argc, char *argv[], struct options *opts);
static void options_process(struct options *opts);
static void cleanup(const struct options *opts);

int main(int argc, char *argv[])
{
    char *buffer;
    ssize_t bytesRead;
    uint8_t *bytes;
    size_t size;
    int sequence = 1;

    buffer = malloc(BUF_SIZE);
    // Special data type for
    struct data_packet dataPacket;

    // dynamic memory for data packet to be sent over to server.
    memset(&dataPacket, 0, sizeof(struct data_packet)); // NOLINT(clang-analyzer-security.insecureAPI.DeprecatedOrUnsafeBufferHandling)


    // Initiating our custom struct.
    struct options opts;

    // Initiating, parsing, and processing option struct for client/server information.
    options_init(&opts);
    parse_arguments(argc, argv, &opts);
    // option processing is also when socket connection is made.
    options_process(&opts);

    // If valid information for client and server, send data to server.
    if(opts.ip_client && opts.ip_receiver)
    {
        // Custom copy method for sending data packet to server.
        copy(STDIN_FILENO, opts.fd_in,  opts.server_addr);
        if(wiringPiSetup() == -1){
            setupFailure(-1);
        }
        running = 1;
        pinMode(ButtonPin, INPUT);
        while (running){
            if(digitalRead(ButtonPin) == 1)
            {
                printf("play music (button pressed)\n");
                dataPacket.data_flag = 1;
                // Ack flag set to 0
                dataPacket.ack_flag = 0;
                // Alternate sequence number
                sequence = !sequence;
                dataPacket.sequence_flag = sequence;
                // Get data
                buffer[bytesRead-1] = '\0';
                // Dynamic memory for data to send and fill with what was read into the buffer.
                dataPacket.data = malloc(BUF_SIZE);
                dataPacket.data = buffer;

                // Serialize struct
                bytes = dp_serialize(&dataPacket, &size);
                // Send to server by using Socket FD.
                write_bytes(opts.fd_in, bytes, size, opts.server_addr);
                // Read socket FD until response from server is available, deserialize packet info and
                //  display response.
                read_bytes(opts.fd_in, bytes, size, opts.server_addr, sequence);
                process_response();

            }
        }
    }

    // Clean up memory from option struct pointer.
    cleanup(&opts);
    return EXIT_SUCCESS;
}

/**
 * Initiating the option struct.
 * @param opts Pointer to option struct.
 */
static void options_init(struct options *opts)
{
    // Dynamic memory
    memset(opts, 0, sizeof(struct options)); // NOLINT(clang-analyzer-security.insecureAPI.DeprecatedOrUnsafeBufferHandling)

    // Default values for file descriptor standard input.
    opts->fd_in = STDIN_FILENO;

    // Default value for Default output port.
    opts->port_receiver = DEFAULT_PORT;
}

/**
 * Take in arguments from the command line.
 * @param argc number of arguments.
 * @param argv array of arguments.
 * @param opts custom struct option pointer.
 */
static void parse_arguments(int argc, char *argv[], struct options *opts)
{
    int c;

    // While valid option is passed.
    while((c = getopt(argc, argv, ":c:o:p:")) != -1)   // NOLINT(concurrency-mt-unsafe)
    {
        switch(c)
        {

            // For setting IP of client.
            case 'c':
            {
                if (inet_addr(optarg) == ( in_addr_t)(-1)) {
                    options_process_close(-1);
                }
                printf("Listening on ip address: %s \n", optarg);
                opts->ip_client = optarg;
                break;
            }

            // For setting IP of server.
            case 'o':
            {
                if (inet_addr(optarg) == ( in_addr_t)(-1)) {
                    options_process_close(-1);
                }
                printf("Sending to ip address: %s \n", optarg);
                opts->ip_receiver = optarg;
                break;
            }

            // For changing port number.
            case 'p':
            {
                opts->port_receiver = parse_port(optarg, 10); // NOLINT(cppcoreguidelines-avoid-magic-numbers,readability-magic-numbers)
                break;
            }
            case ':':
            {
                fatal_message(__FILE__, __func__ , __LINE__, "\"Option requires an operand\"", 5); // NOLINT(cppcoreguidelines-avoid-magic-numbers,readability-magic-numbers)
            }
            case '?':
            {
                fatal_message(__FILE__, __func__ , __LINE__, "\n\nUnknown Argument Passed: Please use from the following...\n'c' for setting client IP.\n"
                                                             "'o' for setting output IP.\n"
                                                             "'p' for port (optional).", 6); // NOLINT(cppcoreguidelines-avoid-magic-numbers,readability-magic-numbers)
            }
            default:
            {
                assert("should not get here");
            }
        }
    }

}

/**
 * Process the option struct with client/server information.
 * @param opts
 */
static void options_process(struct options *opts)
{

    // Only process if valid IP for client is given.
    if(opts->ip_client)
    {
        errno = 0;

        // Special address types for holding client and server addresses.
        struct sockaddr_in addr;
        struct sockaddr_in to_addr;
        int bindResult;

        // Setting up the socket file descriptor.
        opts->fd_in = socket(AF_INET, SOCK_DGRAM, 0);

        // Error check creation of socket FD.
        options_process_close(opts->fd_in);

        // Setting up the client address information for connecting over the network.
        addr.sin_family = AF_INET;
        addr.sin_port = htons(DEFAULT_PORT);
        // convert char dot notation of client IP to network bytes.
        addr.sin_addr.s_addr = inet_addr(opts->ip_client);

        // check for error when getting network byte from Client IP.
        if(to_addr.sin_addr.s_addr ==  (in_addr_t)-1)
        {
            perror("inet_addr: Client Ip could not convert from dot notation to network bytes");
            options_process_close(-1);
        }

        // Setting wait time for data packet exchange.
        /*struct timeval timeout;
        timeout.tv_sec = 10;
        timeout.tv_usec = 0;

         //Setting socket options for initiated socket FD and its reception/send time.
        setsockopt(opts->fd_in, SOL_SOCKET, SO_RCVTIMEO, &timeout,
                   sizeof timeout);
        setsockopt(opts->fd_in, SOL_SOCKET, SO_SNDTIMEO, &timeout,
                   sizeof timeout);*/

        // Assigning address name to the socket FD.
        bindResult = bind(opts->fd_in, (struct sockaddr *)&addr, sizeof(struct sockaddr_in));

        // If socket FD to port binding fails, display error message and leave program.
        options_process_close(bindResult);


        // Setting address information for server side.
        to_addr.sin_family = AF_INET;
        to_addr.sin_port = htons(opts->port_receiver);
        // convert char dot notation of destination IP to network bytes.
        to_addr.sin_addr.s_addr = inet_addr(opts->ip_receiver);

        // If server IP could not be converted to network bytes, print error message and leave program.
        if(to_addr.sin_addr.s_addr ==  (in_addr_t)-1)
        {
            options_process_close(-1);
        }
        opts->server_addr = to_addr;
    }

}

/**
 * Close Socket FD.
 * @param opts pointer to option struct containing client/server address information.
 */
static void cleanup(const struct options *opts)
{
    if(opts->ip_client)
    {
        close(opts->fd_in);
    }
}
