/*
	DesignLibre ShiftRegister595 Library - www.designlibre.com

	This file is part of the ShiftRegister595 Library, an Arduino library for 
	driving a 74H595 shift register IC.

    ShiftRegister595 Library is free software: you can redistribute it and/or modify
    it under the terms of the GNU Lesser General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    ShiftRegister595 Library is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU Lesser General Public License
    along with ShiftRegister595.  If not, see <http://www.gnu.org/licenses/>.
	
	

*/

#include "ShiftRegister595.h"

byte latchPin = 8;  //Pin connected to ST_CP of 74HC595
byte clockPin = 12; //Pin connected to SH_CP of 74HC595
byte dataPin = 11;  //Pin connected to DS    of 74HC595

ShiftRegister595 shiftRegister595 = ShiftRegister595( latchPin , clockPin , dataPin );


void setup() 
{
}

void loop() {
  //count up routine
  for (int j = 0; j < 256; j++) 
  {
    shiftRegister595.write(j);
    delay(1000);
  }
}