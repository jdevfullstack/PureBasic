Dim classNumberBoys.s(25)
Dim classNumberGirls.s(25)

For x.b = 0 To 24
  classNumberBoys(x) = "B" + Str(x + 1)
  classNumberGirls(x) = "G" + Str(x + 1)
  ;Debug classNumberBoys(x)
  ;Debug classNumberGirls(x) 
Next

;will be coming from the interface
desiredNumberBoys = 20 - 1

NewList stuList.s()
For x.b = 0 To desiredNumberBoys
  AddElement(stuList()) : stuList() = classNumberBoys(x)
Next

;will be coming from the interface
desiredNumberGirls = 20 - 1

For x.b = 0 To desiredNumberGirls
  AddElement(stuList()) : stuList() = classNumberGirls(x)
Next

; iteration = 0
; ForEach stuList()
;   ;Debug stuList()
;   iteration = iteration + 1
;   iteration2 = iteration - 1
;   ;Debug iteration2
;   SelectElement(stuList(),iteration2)
;   ;Debug "Element selected: " + Str(SelectElement(stuList(),iteration2))
;   ;Debug ""
;   If stuList() = "B4"
;     DeleteElement(stuList())
;     Break
;   EndIf
; Next
; 
; ForEach stuList()
;   Debug stuList()
; Next
; 
; ;Debug ListIndex(stuList())
; Debug ListSize(stuList())
; IDE Options = PureBasic 5.00 (Windows - x64)
; EnableXP