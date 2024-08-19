#define UART_RX     (*((volatile int*)(0x40001000 + 0x0)))
#define UART_TX     (*((volatile int*)(0x40001000 + 0x4)))
#define UART_STAT   (*((volatile int*)(0x40001000 + 0x8)))
#define UART_CTRL   (*((volatile int*)(0x40001000 + 0xc)))

void uart_reset();
void uart_send(char c);
void uart_sends(char *s);
