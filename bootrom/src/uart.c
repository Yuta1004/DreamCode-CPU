#ifndef UART_H
#define UART_H

#include "uart.h"

void uart_reset() {
    UART_CTRL = 0b000011;   // Reset Rx|Tx FIFO
}

void uart_send(char c) {
    while ((UART_STAT & 0b00001000) != 0);
    UART_TX = c;
}

void uart_sends(char *s) {
    for (char *c = s; *c != 0; ++ c) {
        uart_send(*c);
    }
}

#endif
