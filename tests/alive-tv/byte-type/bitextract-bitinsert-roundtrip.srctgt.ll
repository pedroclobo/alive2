define i8 @src(b32 %b, i8 %v) {
  %ins = bitinsert b32 %b, i8 %v, i32 8
  %ext = bitextract i8, b32 %ins, i32 8
  ret i8 %ext
}

define i8 @tgt(b32 %b, i8 %v) {
  ret i8 %v
}
