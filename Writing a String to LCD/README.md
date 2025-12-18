<h1 align="center">Liquid Crystal Display Interfacing Using 8051 Microcontroller</h1>

## Introduction
A Liquid Crystal Display (LCD) is used to display text and numbers in embedded systems. In this project, a 16×2 LCD is interfaced with an 8051 microcontroller to show output data. The 8051 sends commands and data to the LCD using control and data pins.

## LCD Pin Description
- VSS (Pin 1): Ground (0V)

- VDD (Pin 2): +5V power supply

- V0 (Pin 3): Contrast adjustment using potentiometer

- RS (Pin 4): Read Select Register is used to select the command mode or data mode

  0 → Command register
  
  1 → Data register

- R/W (Pin 5): Read/Write pin sets inwrite or read mode
  
  0 → Write operation
  
  1 → Read operation (usually grounded as we mostly use LCD to read)

- EN (Pin 6): Enable pin to latch data

- D0–D7 (Pins 7–14): Data lines for command and data transfer

- LED+ (Pin 15): Backlight anode (+5V via resistor)

- LED− (Pin 16): Backlight cathode (Ground)

## Pinout 
<p align="center">
  <img src="D:\Internship_Dec\LCD\New folder\LCD16x2Pins.png" width="500">
</p>

## LCD Command Words That we Used

- 0x38 – Function set

  8-bit mode

- 0x0E – Display ON

  Display ON, cursor ON

- 0x01 – Clear display

  Clears screen and moves cursor to home

- 0x02 – Return home

  Cursor moves to first position

- 0x80 – Set cursor position

  Moves cursor to first row, first column

- 0xC0 – Set cursor position

  Moves cursor to second row, first column
