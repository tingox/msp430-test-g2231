MEMORY
{
  /* msp430g2231: 128 bytes RAM, 2 kByte flash */
  /* These values are correct for the msp430g2553 device. You will need to
     modify these values if using a different device. Room must be reserved
     for interrupt vectors plus reset vector and the end of the first 64kB
     of address space. */
  RAM : ORIGIN = 0x0200, LENGTH = 0x0080
  ROM : ORIGIN = 0xF800, LENGTH = 0x07C0
  VECTORS : ORIGIN = 0xFFE0, LENGTH = 0x1F
}

/* Stack begins at the end of RAM:
   _stack_start = ORIGIN(RAM) + LENGTH(RAM); */

/* TODO: Code (and data?) above 64kB mark, which is supported even without
   using MSP430X mode. */
