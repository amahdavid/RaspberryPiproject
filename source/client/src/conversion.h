#ifndef OPEN_CONVERSION_H
#define OPEN_CONVERSION_H

#include <netinet/in.h>

in_port_t parse_port(const char *buff, int radix);
size_t parse_size_t(const char *buff, int radix);

#endif //OPEN_CONVERSION_H
