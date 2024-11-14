       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRINT-MULTIPLICATION-TABLE.
       AUTHOR. Thomas VELU.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-NUMBER           PIC 9(05)   VALUE 0.
       01  WS-MULTIPLICATOR    PIC 9(02)   VALUE 1.
       01  WS-RESULT           PIC 9(10)   VALUE 0.

       PROCEDURE DIVISION.
           DISPLAY "Please, write a number to print its multiplication t
      -    "able:"
           ACCEPT WS-NUMBER.
           PERFORM PRINT-NUMBER-MULTIPLICATION-TABLE.
           STOP RUN.

       PRINT-NUMBER-MULTIPLICATION-TABLE.
           PERFORM VARYING WS-MULTIPLICATOR FROM 0 BY 1 UNTIL
                                                   WS-MULTIPLICATOR > 10
               COMPUTE WS-RESULT = WS-NUMBER * WS-MULTIPLICATOR
               DISPLAY WS-NUMBER " * " WS-MULTIPLICATOR " = "
                                                               WS-RESULT
           END-PERFORM.
       