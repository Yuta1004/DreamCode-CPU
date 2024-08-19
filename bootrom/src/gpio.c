#include "gpio.h"

unsigned char read_switches() {
    return GPIO_SWITCHES;
}
