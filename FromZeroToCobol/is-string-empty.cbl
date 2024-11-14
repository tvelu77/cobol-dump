       IDENTIFICATION DIVISION.
       PROGRAM-ID. IS-STRING-EMPTY.
       AUTHOR. Thomas VELU.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-STRING           PIC X(20) VALUE SPACES.
       01  WS-NUMBER-OF-SPACES PIC 9(02) VALUE 0.
       01  WS-LENGTH           PIC 9(02) VALUE 20.

       PROCEDURE DIVISION.
           DISPLAY "Write a string:"
           ACCEPT WS-STRING
           INSPECT WS-STRING TALLYING WS-NUMBER-OF-SPACES FOR ALL " "

           IF WS-NUMBER-OF-SPACES = WS-LENGTH THEN
               DISPLAY "Empty string !"
           ELSE
               DISPLAY "Not empty !"
           END-IF.

           STOP RUN.
      