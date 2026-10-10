; freeze keeps the defined bits of a byte value.

define i16 @src() {
  %b = bitinsert b16 poison, i8 1, i32 8
  %f = freeze b16 %b
  %e = bitextract i8, b16 %f, i32 8
  %r = zext i8 %e to i16
  ret i16 %r
}

define i16 @tgt() {
  ret i16 2
}

; ERROR: Value mismatch
