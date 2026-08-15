define b32 @src(b32 %b) {
  %ext = bitextract b8, b32 %b, i32 8
  %ins = bitinsert b32 %b, b8 %ext, i32 8
  ret b32 %ins
}

define b32 @tgt(b32 %b) {
  ret b32 %b
}
