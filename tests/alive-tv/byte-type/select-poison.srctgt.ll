; A select with a non-poison condition keeps the bytes of its operands.

define i8 @src(b8 %a, b8 %b, i1 noundef %c) {
  %s = select i1 %c, b8 %a, b8 %b
  %r = bitcast b8 %s to i8
  ret i8 %r
}

define i8 @tgt(b8 %a, b8 %b, i1 noundef %c) {
  %x = bitcast b8 %a to i8
  %y = bitcast b8 %b to i8
  %r = select i1 %c, i8 %x, i8 %y
  ret i8 %r
}
