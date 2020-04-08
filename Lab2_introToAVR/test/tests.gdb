# Test file for "Lab2_introToAVR"


# commands.gdb provides the following functions for ease:
#   test "<message>"
#       Where <message> is the message to print. Must call this at the beginning of every test
#       Example: test "PINA: 0x00 => expect PORTC: 0x01"
#   checkResult
#       Verify if the test passed or failed. Prints "passed." or "failed." accordingly, 
#       Must call this at the end of every test.
#   expectPORTx <val>
#       With x as the port (A,B,C,D)
#       The value the port is epected to have. If not it will print the erroneous actual value
#   setPINx <val>
#       With x as the port or pin (A,B,C,D)
#       The value to set the pin to (can be decimal or hexidecimal
#       Example: setPINA 0x01
#   printPORTx f OR printPINx f 
#       With x as the port or pin (A,B,C,D)
#       With f as a format option which can be: [d] decimal, [x] hexadecmial (default), [t] binary 
#       Example: printPORTC d
#   printDDRx
#       With x as the DDR (A,B,C,D)
#       Example: printDDRB

echo ======================================================\n
echo Running all tests..."\n\n


# Add tests below
test "PINA: 0x00 => PORTC: 0x04"
setPINA 0x00
continue 5
expectPORTC 0x04
checkResult

test "PINA: 0x01 => PORTC: 0x03"
setPINA 0x01
continue 5
expectPORTC 0x03
checkResult

test "PINA: 0x02 => PORTC: 0x03"
setPINA 0x02
continue 5
expectPORTC 0x03
checkResult

test "PINA: 0x04 => PORTC: 0x03"
setPINA 0x04
continue 5
expectPORTC 0x03
checkResult

test "PINA: 0x08 => PORTC: 0x03"
setPINA 0x08
continue 5
expectPORTC 0x03
checkResult

test "PINA: 0x03 => PORTC: 0x02"
setPINA 0x03
continue 5
expectPORTC 0x02
checkResult

test "PINA: 0x05 => PORTC: 0x02"
setPINA 0x05
continue 5
expectPORTC 0x02
checkResult

test "PINA: 0x06 => PORTC: 0x02"
setPINA 0x06
continue 5
expectPORTC 0x02
checkResult

test "PINA: 0x09 => PORTC: 0x02"
setPINA 0x09
continue 5
expectPORTC 0x02
checkResult

test "PINA: 0x0A => PORTC: 0x02"
setPINA 0x0A
continue 5
expectPORTC 0x02
checkResult

test "PINA: 0x0C => PORTC: 0x02"
setPINA 0x0C
continue 5
expectPORTC 0x02
checkResult

test "PINA: 0x0F => PORTC: 0x80"
setPINA 0x0F
continue 5
expectPORTC 0x080
checkResult

# Report on how many tests passed/tests ran
set $passed=$tests-$failed
eval "shell echo Passed %d/%d tests.\n",$passed,$tests
echo ======================================================\n
