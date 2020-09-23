// Draws an 16 by n black rectangle on screen
// The length of the rectangle is specidied by the value of register 0


      @R0
      D=M
      @n
      M=D
      @i
      M=0
      @a
      M=16384
(LOOP)
      @i
      D=M
      @n
      D=D-M
      @END
      D;JEQ
 
      @a
      A=M
      M=-1

      @i
      M=M+1

      @32
      D=A
      @a
      M=M+D

      @LOOP
      0;JMP
(END)
      @END
      0;JMP
