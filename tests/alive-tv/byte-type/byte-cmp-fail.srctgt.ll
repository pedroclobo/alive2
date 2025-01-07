define i1 @src(b8 %a, b8 %b) {
  %x = bytecast b8 %a to i8
  %y = bytecast b8 %b to i8
  %cmp = icmp eq i8 %x, %y
  ret i1 %cmp
}

define i1 @tgt(b8 %a, b8 %b) {
  %cmp = icmp eq b8 %a, %b
  ret i1 %cmp
}

; ERROR: Value mismatch
