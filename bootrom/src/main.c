#include "gpio.h"
#include "uart.h"

static inline char read_boot_options() {
    return read_switches() & 0b1111;
}

static inline void print_boot_options(char opts) {
    uart_sends("Show boot options\r\n");

    uart_sends("  - [");
    (opts & 0b0001) != 0 ? uart_send('o') : uart_send(' ');
    uart_sends("] Boot section validation\r\n");

    uart_sends("  - [");
    (opts & 0b0010) != 0 ? uart_send('o') : uart_send(' ');
    uart_sends("] Enable jump boot\r\n");

    uart_sends("  - [");
    (opts & 0b0100) != 0 ? uart_send('o') : uart_send(' ');
    uart_sends("] Monitor this switch before booting\r\n");

    uart_sends("  - [");
    (opts & 0b1000) != 0 ? uart_send('o') : uart_send(' ');
    uart_sends("] (no options)\r\n");

    return;
}

static inline void wait_boot() {
    uart_sends("Waiting ready signal ... ");
    while ((read_boot_options() & 0b0100) != 0) {}
    uart_sends("Ok\r\n");
}

static inline void validate_boot_section() {
    uart_sends("Validating ... ");
    if (*((unsigned int*)0x20000000) != 0x0040006f) {
        uart_sends("Failed\r\n");
        while (1) {}
    }
    uart_sends("Success\r\n");
}

static inline void jump_boot() {
    uart_sends("Jump booting ...\r\n");
    ((void (*)(void))0x20000000)();
}

__attribute__((naked))
int main() {
    // Reset peripherals
    uart_reset();

    // Welcome Message
    uart_sends("DreamCode CPU BootROM v0.1.0\r\n");

    // Read boot options
    char opts = read_boot_options();
    print_boot_options(opts);

    // Wait for booting
    if ((opts & 0b0100) != 0) {
        wait_boot();
    }

    // Validation
    if ((opts & 0b0001) != 0) {
        validate_boot_section();
    }

    // Boot
    if ((opts & 0b0010) != 0) {
        jump_boot();
    }

    while (1) {}
}
