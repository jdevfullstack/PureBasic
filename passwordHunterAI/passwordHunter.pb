;this simple program is a great way to practice loops

MissingDigitOne.s = Str ( Random ( 9 ) )
MissingDigitTwo.s = Str ( Random ( 9 ) )
MissingDigitThree.s = Str ( Random ( 9 ) )
MissingDigitFour.s = Str ( Random ( 9 ) )

FirstHalf.s = MissingDigitOne + MissingDigitTwo
SecondHalf.s = MissingDigitThree + MissingDigitFour

MissingPassword.s = FirstHalf + SecondHalf

If OpenConsole ( )
  StartTime = ElapsedMilliseconds ( )
  ConsoleTitle ( "Password Hunt" )
  
  Repeat
    
    DigitOne.s = Str ( Random ( 9 ) )
    DigitTwo.s = Str ( Random ( 9 ) )
    DigitThree.s = Str ( Random ( 9 ) )
    DigitFour.s = Str ( Random ( 9 ) )
    
    Concatenated.s = DigitOne + DigitTwo + DigitThree + DigitFour
    
    i = i + 1
    
    If Concatenated <> MissingPassword
      PrintN ( "" )
      PrintN ( " Trying to match the missing password..." )
      PrintN ( " Attempt " + Str ( i ) )
      PrintN ( "  " + Concatenated + " ????" )
      
    Else
      PrintN ( " Trying to match the missing password..." )
      PrintN ( " Attempt " + Str ( i ) )
      PrintN ( "  " + Concatenated + " = " + MissingPassword )
      
    EndIf
    
    PrintN ( "" )
    
  Until Concatenated = MissingPassword
  
  TimeEnded = ElapsedMilliseconds ( ) 
  
  PrintN ( "" )   
  Print ( " Sir, the missing password " )
  PrintN ( MissingPassword + " was matched by the engine!!!" )
  PrintN ( " There are " + Str ( i )  + " attempts." )
  PrintN ( " Time Elapsed: " + Str (TimeEnded - StartTime) + " milliseconds.")
  PrintN ( " Sir, waiting for my next job." )
  
  Input ( )
  
EndIf 
