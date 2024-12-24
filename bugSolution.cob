01  WS-AREA. 
    05  WS-AMOUNT PIC 9(5) VALUE 0. 
    05  WS-COUNTER PIC 9(3) VALUE 0. 
    05 WS-OVERFLOW-FLAG PIC 9 VALUE 0. 

    PROCEDURE DIVISION. 
    PERFORM VARYING WS-COUNTER FROM 1 BY 1 UNTIL WS-COUNTER > 5 
       IF WS-AMOUNT + 10 > 99999 THEN 
          MOVE 1 TO WS-OVERFLOW-FLAG 
       ELSE 
          ADD 10 TO WS-AMOUNT 
       END-IF 
       END-PERFORM. 

       IF WS-OVERFLOW-FLAG = 1 THEN 
           DISPLAY "Overflow occurred!" 
       ELSE 
           DISPLAY "Final Amount: " WS-AMOUNT 
       END-IF. 
    STOP RUN.