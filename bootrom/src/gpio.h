#ifndef GPIO_H
#define GPIO_H

// GPIO (Switches)
#define GPIO_SWITCHES   (*((volatile unsigned char*)(0x40000000 + 0x0)))

unsigned char read_switches();

#endif
