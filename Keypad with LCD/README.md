# 4x3 Keypad with LCD Interfacing using 8051

## Overview
This experiment demonstrates interfacing a 4×3 matrix keypad with an 8051 microcontroller and an LCD. The keypad allows the user to input a key, which is then detected by the microcontroller and displayed on the LCD in real-time. It is a basic example of digital input handling and display output.

## What is a Keypad?
A keypad is a set of buttons arranged in rows and columns. Pressing a button electrically connects a specific row to a specific column, allowing the microcontroller to detect which key was pressed. Matrix keypads reduce the number of required I/O pins by using a combination of row and column scanning.

## Working
1. **Row-Column Scanning**: The 8051 sets one row LOW at a time and reads the column pins.  
2. **Key Detection**: When a key is pressed, the corresponding column reads LOW, identifying the pressed key.  
3. **Display Output**: The detected key is sent to the LCD, which shows the character on the screen.  
4. **Looping**: The scanning repeats continuously to detect subsequent key presses in real-time.

## Connections
- **Rows (P0)** → Row pins of the keypad  
- **Columns (P1)** → Column pins of the keypad  
- **LCD Data (P3)** → LCD data lines  
- **RS (P2.0), EN (P2.1)** → LCD control pins  

## Notes
- Ensure proper pull-up resistors for the column lines if required.  
- A small delay is used for debouncing the key press.  
