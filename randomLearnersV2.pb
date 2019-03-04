XIncludeFile "LEARNERS_ARRAY.pbi"

Enumeration
  #Directory1 
  #WINDOW_1 
  #LISTVIEW_1 
  #LISTVIEW_2 
  #LISTVIEW_3 
  #TEXT_GADGET_1
  #TEXT_GADGET_2
  #TEXT_GADGET_3
  #BUTTON_GADGET_1
EndEnumeration

#WINDOWS_FLAGS = #PB_Window_SystemMenu | #PB_Window_ScreenCentered

If OpenWindow(#WINDOW_1, 0, 0, 420, 320, "MARK 104", #WINDOWS_FLAGS)
  
  TextGadget(#TEXT_GADGET_1,5,10,400,30,"RANDOM LEARNERS:")
  ;TextGadget(#TEXT_GADGET_2,5,350,500,30,"SELECTED LEARNERS: ")
  ButtonGadget(#BUTTON_GADGET_1,230,0,100,40,"RUN!")
  ListViewGadget(#LISTVIEW_1, 10, 40, 400, 260) 
  
  SetGadgetFont(#WINDOW_1,FontID(LoadFont(#PB_Any,"Century Gothic", 12)))
  SetGadgetFont(#LISTVIEW_1,FontID(LoadFont(#PB_Any,"Century Gothic", 40)))
  SetGadgetFont(#TEXT_GADGET_1,FontID(LoadFont(#PB_Any,"Comic Sans MS", 16)))
  ;SetGadgetFont(#TEXT_GADGET_2,FontID(LoadFont(#PB_Any,"Comic Sans MS", 16)))
  SetGadgetFont(#BUTTON_GADGET_1,FontID(LoadFont(#PB_Any,"Century Gothic", 18)))
  
  For x2.i = 0 To 49
    AddGadgetItem(#LISTVIEW_1,-1,mixedArray(x2))
  Next 
  ;SetGadgetState(#LISTVIEW_1, 0 )  
  
  Repeat
    
    Event = WaitWindowEvent()
    
    Select Event        
      Case #PB_Event_Gadget
        Select EventGadget()
          Case #BUTTON_GADGET_1
            ;DisableGadget(#BUTTON_GADGET_1,1)
            ;For x4.i = 1 To 4
              SetGadgetState(#LISTVIEW_1,Random(49)) ;start randomly 
              ;GetGadgetState(#LISTVIEW_1)
              Delay (1000)
              
              repeatUntilNum = Random(7)              
              For x.b = 0 To repeatUntilNum
                SetGadgetState(#LISTVIEW_1,GetGadgetState(#LISTVIEW_1) + 1)
                Delay (1000)
              Next 
              
;               Repeat                
;                 If GetGadgetState(#LISTVIEW_1) = 0
;                   Break
;                 EndIf
;                 
;                 SetGadgetState(#LISTVIEW_1,GetGadgetState(#LISTVIEW_1) + 1 )
;                 Delay (1000)                
;                 
;                 repeatUntilNum = Random(3) ;whatever number is this  
;                 
;                 If GetGadgetState(#LISTVIEW_1) = 49
;                   Break
;                 EndIf
;                                 
;               Until repeatUntilNum = 3 ;Or GetGadgetState(#LISTVIEW_1) = 49
              
              selectedRand = GetGadgetState(#LISTVIEW_1)
              
              For x3.i = 1 To 3 
                SetGadgetState(#LISTVIEW_1,selectedRand)
                Delay (500)
                SetGadgetState(#LISTVIEW_1,-1)
                Delay (500)
                SetGadgetState(#LISTVIEW_1,selectedRand)
              Next
              Delay (1000)
              
              ;Debug Str(x4) + ": " + Str(selectedRand) 
            ;Next x4        
            
            ;MessageRequester("SELECTED: ", GetGadgetItemText(#LISTVIEW_1,GetGadgetState(#LISTVIEW_1))) 
            
        EndSelect
        
    EndSelect
  Until Event = #PB_Event_CloseWindow
EndIf
