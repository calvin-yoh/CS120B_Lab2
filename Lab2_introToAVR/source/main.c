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
#include <stdlib.h>
#ifdef _SIMULATE_
#include "simAVRHeader.h"
#endif	

int main(void) {
	DDRA = 0x00; PORTA = 0xFF;
	DDRB = 0x00; PORTB = 0xFF;
	DDRC = 0x00; PORTC = 0xFF;
	DDRD = 0xFF; PORTD = 0x00;
	unsigned char weightA = 0x00;
	unsigned char weightB = 0x00;
	unsigned char weightC = 0x00;
	unsigned char totalWeight = 0x00;
	unsigned char tempVal = 0x00;

	while (1) {
		weightA = PINA;
		weightB = PINB;
		weightC = PINC;
		totalWeight = weightA + weightB + weightC;
		if (totalWeight > 0x8C)
		{
			if ((weightA - weightC) > 0x50 || (weightC - weightA) > 0x50)
			{
				tempVal = 0x03;
			}
			else
			{
				tempVal = 0x01;
			}
		}
		else
		{
			if (weightA - weightC > 0x50 || weightC - weightA > 0x50)
			{
				tempVal = 0x02;
			}
		}
		PORTD = totalWeight | tempVal;
	}
	return 0;
}

	
