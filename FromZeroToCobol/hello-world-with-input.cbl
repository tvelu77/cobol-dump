       IDENTIFICATION DIVISION.
       PROGRAM-ID. HELLO-WORLD-WITH-INPUT.
       AUTHOR. Thomas VELU.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  WS-NAME PIC X(12).

       PROCEDURE DIVISION.
           
           DISPLAY "Hello world !".
           DISPLAY "What is your name ?".

           ACCEPT WS-NAME.

           DISPLAY "Okay, so you're " WS-NAME.
           
           STOP RUN.
      