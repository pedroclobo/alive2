define i1 @f1(b8 %a, b8 %b) {
  %x = bytecast exact b8 %a to i8
  %y = bytecast exact b8 %b to i8
  %cmp = icmp eq i8 %x, %y
  ret i1 %cmp
}

define i1 @f2(b64 %a, b64 %b) {
  %x = bytecast exact b64 %a to ptr
  %y = bytecast exact b64 %b to ptr
  %cmp = icmp eq ptr %x, %y
  ret i1 %cmp
}
