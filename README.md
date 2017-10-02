## ATTiny13 LM35 SSD1306 Термометр

* I2C это часть кода из Tinusaur/SSD1306xLED project.
* библиотека Tinusaur/SSD1306xLED сильно обрезана.
* памяти t13 недостаточно для размещения всего шрифта поэтому шрифт сильно обрезан.


#### EN


* I2C Code is part of Tinusaur/SSD1306xLED project.
* Tinusaur/SSD1306xLED library was heavily reduced.
* memory ot t13 is not enough for the entire font so the font is truncated.


#### Сборка / Compile
```
mcu=attiny13
avr-gcc -mmcu=$mcu -Wall -Os -std=gnu99 -o Termo000.elf Termo000.c ssd1306xled/ssd1306xled.c 
avr-objcopy -O ihex  Termo000.elf Termo000.hex
avr-size --mcu=$mcu --format=avr Termo000.elf 
```


#### Schematic
![Eagle][eagle-sch-img]

[eagle-sch-img]: https://github.com/joingig/t13-Thermometer/blob/master/images/t13-lm35-ssd1306.jpg "Eagle schematic"

#### AVR Toolcain from Microchip
```
avr8-gnu-toolchain-installer-3.5.4.91-win32
```


#### Part list
+ ATTiny13
+ LM35
+ SSD1306 64*48 


#### Known issues
```
 Wrong x*y orientation
 Need C/F and Degree symbols
```

