define i8 @src(b32 %b) {
  %ext = bitextract i8, b32 %b, i32 32
  ret i8 %ext
}

define i8 @tgt(b32 %b) {
  ret i8 poison
}
