define i8 @src(ptr %p) {
  %v = load b16, ptr %p
  %c = bytecast exact b16 %v to i8
  ret i8 %c
}

define i8 @tgt(ptr %p) {
  %v = load b16, ptr %p
  %c = bytecast exact b16 %v to i16
  %t = trunc i16 %c to i8
  ret i8 %t
}

; ERROR: Target is more poisonous than source
