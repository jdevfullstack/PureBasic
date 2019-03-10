Dim classNumberBoys.s(25)
Dim classNumberGirls.s(25)
Dim mixedArray.s(49)

For x.b = 0 To 24
  ;Debug x
  classNumberBoys(x) = "B" + Str(x + 1)
  classNumberGirls(x) = "G" + Str(x + 1)
  mixedArray(x) = "B" + Str(x + 1)
  
  ;Debug classNumberBoys(x)
  ;Debug classNumberGirls(x)
  
Next

For x.b = 25 To 49
  mixedArray(x) = "G" + Str(x - 24)
  Next

; IDE Options = PureBasic 5.00 (Windows - x64)
; EnableXP