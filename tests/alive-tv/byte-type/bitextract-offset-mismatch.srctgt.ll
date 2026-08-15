; ERROR: Value mismatch

define i8 @src() {
  ret i8 1
}

define i8 @tgt() {
  %ins = bitinsert b32 0, i8 1, i32 8
  %ext = bitextract i8, b32 %ins, i32 16
  ret i8 %ext
}
