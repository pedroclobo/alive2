define i8 @src(ptr %p) {
  %v = load b8, ptr %p
  %c = bytecast b8 %v to i8
  ret i8 %c
}

define i8 @tgt(ptr %p) {
  %v = load i8, ptr %p
  ret i8 %v
}

; ERROR: Target is more poisonous than source
