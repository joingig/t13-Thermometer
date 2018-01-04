#!/bin/sh

mcu=attiny13

avr-gcc -mmcu=$mcu -Wall -Os -std=gnu99 -o Termo000.elf Termo000.c ssd1306xled/ssd1306xled.c 

avr-objcopy -O ihex  Termo000.elf Termo000.hex

avr-size --mcu=$mcu --format=avr Termo000.elf 

avr-objdump -D -m avr Termo000.hex > Termo000.asm 

avr-objdump -S -m avr Termo000.elf > Termo000_.asm 


echo Done

