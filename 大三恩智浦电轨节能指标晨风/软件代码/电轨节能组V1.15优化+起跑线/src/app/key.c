#include "include.h"

void key_init()
{
  gpio_init(PTC7, GPI, 1);
  gpio_init(PTC8, GPI, 1);
  gpio_init(PTC9 , GPI, 1);
  gpio_init(PTC10 , GPI, 1);
  gpio_init(PTC11 , GPI, 1);
  PORT_PCR_REG(PORTX_BASE(PTC7), PTn(PTC7)) = ( PORT_PCR_MUX(1) | GPI_UP );
  PORT_PCR_REG(PORTX_BASE(PTC8), PTn(PTC8)) = ( PORT_PCR_MUX(1) | GPI_UP );
  PORT_PCR_REG(PORTX_BASE(PTC9), PTn(PTC9)) = ( PORT_PCR_MUX(1) | GPI_UP );
  PORT_PCR_REG(PORTX_BASE(PTC10), PTn(PTC10)) = ( PORT_PCR_MUX(1) | GPI_UP );
  PORT_PCR_REG(PORTX_BASE(PTC11), PTn(PTC11)) = ( PORT_PCR_MUX(1) | GPI_UP );
}

uint8 read_key()
{
  if ( PTC7_IN == 0 )//ÉÏ
  {
  LED_ON;
  pit_delay_ms(PIT1,50);
  LED_OFF;
     return (1);
  }
  if ( PTC8_IN == 0 )//×ó
  {
  LED_ON;
  pit_delay_ms(PIT1,50);
  LED_OFF;
    return (4);
  }
  if ( PTC9_IN == 0 )//ÏÂ
  {
  LED_ON;
  pit_delay_ms(PIT1,50);
  LED_OFF;
    return (3);
  }
  if ( PTC10_IN == 0 )//ÖÐ
  {
  LED_ON;
  pit_delay_ms(PIT1,50);
  LED_OFF;
     return (2);
  }
  if ( PTC11_IN == 0 )//ÓÒ
  {
  LED_ON;
  pit_delay_ms(PIT1,50);
  LED_OFF;
     return (5);
  }
  return (0);
}