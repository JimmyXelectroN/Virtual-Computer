// multiples the values of register 0 and register 1 and stores value in register 2
// computes: int i = m1
//	     int j = m2
//	     int p = 0;
//	     while (j > 0)
//	     	p+=i
//		j--

      @R2
      M=0
(LOOP)
      @R1
      D=M // set d register to r1 register's value

      @END
      D;JEQ // if d (or value at r1) is 0 then jump to the end of the program

      @R0
      D=M // set d to the value of register 0

      @R2
      M=M+D // add value at d register to value at register 2

      @R1
      M=M-1 // decrement value at register 1

      @LOOP 
      0;JMP // jump back to start of loop
(END)
      @END
      0;JMP
