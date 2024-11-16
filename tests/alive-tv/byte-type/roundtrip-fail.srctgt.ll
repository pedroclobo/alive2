define b8 @src(b8 %b) {
  %1 = bytecast b8 %b to i8
  %2 = bitcast i8 %1 to b8
  ret b8 %2
}

define b8 @tgt(b8 %b) {
  ret b8 %b
}

; ERROR: Value mismatch
