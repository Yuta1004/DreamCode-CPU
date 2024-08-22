#include "string.h"
#include "sleep.h"

#include "xil_printf.h"
#include "xil_cache.h"

#include "program.h"

#define t2s(a) #a
#define run(name) {\
    setup((unsigned char*)0x20000000, name ##_bin, name ## _bin_len); \
    reset(); \
}

void setup(unsigned char *addr, unsigned char *program, size_t length) {
    for (int idx = 0; idx < length; ++ idx) {
        *(addr++) = *(program++);
    }
}

void reset(void) {
    Xil_Out32(0xF8000008, 0x0000DF0D); // UNLOCK SCLR
    Xil_Out32(0xF8000240, 0x00000001); // ASSERT FCLK_RESET0
    Xil_Out32(0xF8000240, 0x00000000); // DE-ASSERT FCLK_RESET0
    Xil_Out32(0xF8000004, 0x0000767B); // LOCK SCLR
}

int main() {
    Xil_DCacheDisable();

    run(out_bootrom);

    return 0;
}
