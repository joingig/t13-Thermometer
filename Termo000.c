// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
//                ATtiny
//               13
//              +----------+   (-)-------
//      (RST)---+ PB5  Vcc +---(+)-------
// -[CLKI/ADC3]-+ PB3  PB2 +---[SCK/ADC1]-
//           ---+ PB4  PB1 +---[MISO/AIN1/OC0B/INT0]
// -------(-)---+ GND  PB0 +---[MOSI/AIN0/OC0A/PCINT0]-
//              +----------+
// -----(+)---------------> // Vcc, Pin 1 on SSD1306 Board
// -----(-)---------------> // GND, Pin 2 on SSD1306 Board

#define SSD1306_SCL   PB2 // SCL, Pin 3 on SSD1306 Board
#define SSD1306_SDA   PB0 // SDA, Pin 4 on SSD1306 Board
#define SSD1306_SA    0x3C   // Slave address


#define F_CPU 1000000UL

#include <avr/io.h>
#include <util/delay.h>
#include <avr/interrupt.h> 

#include "ssd1306xled/ssd1306xled.h"



//add2
// https://github.com/sparkfun/SparkFun_Micro_OLED_Arduino_Library/tree/master/src/util

 
volatile unsigned int adc_counter, temperature, value;
 
// ADC end int 
ISR(ADC_vect)
{
// Vref = 5V, выход с датчика от 0 до 1,5V
// max напряжение на входе 4,99V
// k = 499/1023 = 0,487 или 26/53
//value = value + ((ADC*26)/53);

// not working yet
// fix for 2.7V Vcc   -> 0.270  -> 24 / 89
// value = value + ((ADC*24)/89);

// Vref = 4.1V, выход с датчика от 0 до 1,5V
// max напряжение на входе 4,1V
// k = 401/1023 = 0,392 или 26/53
value = value + ((ADC*39)/99);

  adc_counter++;
}


int main(void)
{

  _delay_ms(40);
  ssd1306_init();
  _delay_ms(40);
  ssd1306_clear(); 

DDRB = 0b00000111;
PORTB = 0b00000000;
 
ADMUX |= (1 << MUX1)|(1 << MUX0);  // ADC3 in
ADCSRA |= (1 << ADEN) // ADC ena
       |(1 << ADPS2)|(1 << ADPS1) // divider =  64
       |(1 << ADIE); // ADC end inter ena
 
ACSR |= (1 << ACD); // AC off
DIDR0 |= (1 << ADC3D); // shut not user digital ports 
 
sei(); 
 
char display[3];
for (;;) 
{
  ADCSRA |= (1 << ADSC); // Read ADC
 
  if(adc_counter > 300) // вычисляем среднее значение АЦП
  {
    temperature = value/adc_counter;
    adc_counter = 0;
    value = 0;
    _delay_ms(50);
    //
    
    //
    // Если температура меньше 100 градусов гасим незначащий ноль
    
    display[2] =  temperature % 10  + 48 ;
    display[1] =  (temperature / 10) % 10    + 48 ;

    if(temperature < 100)
    {
            display[0] =  0  + 48 ;
    }
    // Иначе показываем все разряды
    else
    {
          display[0] =  (temperature / 100) % 10  + 48 ;
    }

    ssd1306_setpos(40, 8);
    ssd1306_string_font6x8(display);

  }// if(adc_counter
} // while(1)

}  // main
