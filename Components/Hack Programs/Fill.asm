// This program runs an infinite loop that listens to the keyboard input. When a key is pressed (any key), the program blackens the screen, namely, 
// writes “black” in every pixel. When no key is pressed, the screen should be cleared.

(LOOP)
      @i                    // uiofon
      M=0
      @8192
      D=A
      @n
      M=D
      
      @KBD
      D=M
      @WHITE
      D;JEQ

      (BLACK) 
            @i
	    D=M
	    @n
	    D=D-M
	    @LOOP
	    D;JEQ

	    @SCREEN
	    D=A
	    @i
	    A=D+M
	    M=-1

	    @i
	    M=M+1

	    @BLACK
	    0;JMP

      (WHITE)
            @i
	    D=M
	    @n
	    D=D-M
	    @LOOP
            D;JEQ

	    @SCREEN
	    D=A
	    @i
	    A=D+M
	    M=0

	    @i
	    M=M+1

	    @WHITE
	    0;JMP
