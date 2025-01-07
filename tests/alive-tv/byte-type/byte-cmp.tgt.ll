define i1 @f1(b8 %a, b8 %b) {
  %cmp = icmp eq b8 %a, %b
  ret i1 %cmp
}

define i1 @f2(b64 %a, b64 %b) {
  %cmp = icmp eq b64 %a, %b
  ret i1 %cmp
}
