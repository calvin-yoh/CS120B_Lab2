/*	Author: cyoh001
 *  Partner(s) Name: 
 *	Lab Section 22
 *	Assignment: Lab #  Exercise #
 *	Exercise Description: [optional - include for your own benefit]
 *
 *	I acknowledge all content contained herein, excluding template or example
 *	code, is my own original work.
 */
#include <avr/io.h>
#ifdef _SIMULATE_
#include "simAVRHeader.h"
#endif	

int main(void) {
	DDRA = 0x00; PORTA = 0xFF; // Configure port A's 8 pins as inputs
	DDRB = 0xFF; PORTB = 0x00;
	unsigned char tmpB = 0x00; // Temporary variable to hold the value of B
	unsigned char tmpA = 0x00;
	while(1){
		tmpA = PINA & 0xFF;
		if(tmpA == 0x01)
		{
			tmpB = 0x01; 
		}
		else
		{
			tmpB = 0x00;
		}
		PORTB = tmpB;
	}
	return 0;
}
	
