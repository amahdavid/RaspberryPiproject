#ifndef OPEN_COPY_H
#define OPEN_COPY_H

#include <unistd.h>
#include <netinet/in.h>

// Custom struct for confirmation and sequence between client/server.
struct data_packet {
    int data_flag;
    int ack_flag;
    int sequence_flag;
    char *data;
};

/**
 * For sending information to another machine.
 * @param from_fd File Descriptor of source.
 * @param to_fd  File Descriptor of Destination.
 * @param dataPacket Data Packet for making connection reliable.
 * @param server_addr Socket address of destination address.
 */
void copy(int from_fd, int to_fd, struct sockaddr_in server_addr);
static uint8_t *dp_serialize(const struct data_packet *x, size_t *size);
static struct data_packet *dp_deserialize(ssize_t nRead, char * data_buffer);
static void write_bytes(int fd, const uint8_t *bytes, size_t size, struct sockaddr_in server_addr);
static struct data_packet * read_bytes(int fd, const uint8_t *bytes, size_t size, struct sockaddr_in server_addr, int seq);
static void process_response();

#endif //OPEN_COPY_H
