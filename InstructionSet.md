<h1 align="center">Instruction Set Used for this Experiments</h1>



| Instruction | Syntax                    | Function                                                 |
| ----------- | ------------------------- | -------------------------------------------------------- |
| ORG         | `ORG address`             | Set starting address for code/data                       |
| ACALL       | `ACALL label`             | Call subroutine within same 2K page                      |
| MOV         | `MOV destination, source` | Copy data between registers, memory, immediate, or ports |
| MOVC        | `MOVC A, @A+DPTR`         | Copy byte from code memory (ROM) using DPTR + A          |
| JZ          | `JZ label`                | Jump if accumulator = 0                                  |
| INC         | `INC operand`             | Increment register or memory by 1                        |
| SJMP        | `SJMP label`              | Short jump within -128 to +127 bytes                     |
| CLR         | `CLR bit`                 | Clear a single bit (set to 0)                            |
| SETB        | `SETB bit`                | Set a single bit (set to 1)                              |
| DJNZ        | `DJNZ reg, label`         | Decrement register and jump if not zero                  |
| CJNE        | `CJNE A, #data, label`    | Compare accumulator with immediate, jump if not equal    |
| DB          | `DB 'string', 0`          | Define bytes in program memory                           |
| END         | `END`                     | Marks end of source file                                 |
