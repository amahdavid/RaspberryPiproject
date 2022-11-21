#ifndef OPEN_ERROR_H
#define OPEN_ERROR_H

#include <stdlib.h>

_Noreturn void fatal_errno(const char *file, const char *func, size_t line, int err_code, int exit_code);
_Noreturn void fatal_message(const char *file, const char *func, size_t line, const char *msg, int exit_code);
void options_process_close(int result_number);
void setupFailure(int result_number);


#endif //OPEN_ERROR_H
