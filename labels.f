        ! making a jump
        PROGRAM label
        REAL :: r, m
        INTEGER i, j
        INTEGER:: IN, OUT, DON
        ASSIGN 10 TO OUT
        ASSIGN 20 TO IN
        ASSIGN 30 TO DONE
        i = 0 ! initialize the index
00010   i+=1
        IF (j == 5) THEN
          GOTO OUT
        END IF
        j = 0 !reset the index
00020   j+=1
        IF (j == 10) THEN
          GOTO OUT
        END IF
        CALL random_number(r)
        CALL random_number(m)
        PRINT "(f5.5,f.5.5)", r, m
        IF (i < 5)
          GOTO IN
        END IF
        GOTO DON
00030   CONTINUE 
        PRINT *, "done"
        
        END PROGRAM