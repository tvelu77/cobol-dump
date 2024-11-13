       IDENTIFICATION DIVISION.
       PROGRAM-ID. GUESS-THE-NUMBER.
       AUTHOR. Thomas VELU.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-RANDOM-NUMBER PIC 9(3).
       01  WS-ATTEMPT PIC 9(3) VALUE 1.
       01  WS-INPUT PIC 9(3) VALUE 0.
           88 WS-EQUAL-TO-RANDOM-NUMBER VALUE 9.

       PROCEDURE DIVISION.
           COMPUTE WS-RANDOM-NUMBER =
               1 + 100 * (FUNCTION RANDOM(FUNCTION CURRENT-DATE(15:2))).
           DISPLAY "Welcome to ""Guess the number""".
           DISPLAY "The number is between 1 to 100".
           DISPLAY "Good luck !".
           PERFORM 8000-ASKING-NUMBER
               THRU 8000-CHECK-IF-WINNER
               UNTIL WS-EQUAL-TO-RANDOM-NUMBER
           STOP RUN.
       
       8000-ASKING-NUMBER.
           DISPLAY "Choose a number between 1 to 100:".
           ACCEPT WS-INPUT.
           IF WS-RANDOM-NUMBER = WS-INPUT THEN
               SET WS-EQUAL-TO-RANDOM-NUMBER TO TRUE
            END-IF.
        
        8000-CHECK-IF-WINNER.
           IF WS-EQUAL-TO-RANDOM-NUMBER
               DISPLAY "You won after " WS-ATTEMPT " attempts"
               STOP RUN
            ELSE
               DISPLAY "BEEEEP ! Try again..."
               ADD 1 TO WS-ATTEMPT
               IF WS-INPUT > WS-RANDOM-NUMBER
                   DISPLAY "Less !"
                ELSE
                   DISPLAY "More !"
                END-IF
            END-IF.
