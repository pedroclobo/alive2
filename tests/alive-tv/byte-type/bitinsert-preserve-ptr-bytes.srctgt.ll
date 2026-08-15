define i8 @src(b64 %b, ptr %p, i8 %v) {
  %ins1 = bitinsert b64 %b, ptr %p, i32 0
  %ins2 = bitinsert b64 %ins1, i8 %v, i32 0
  %ext = bitextract i8, b64 %ins2, i32 8
  ret i8 %ext
}

define i8 @tgt(b64 %b, ptr %p, i8 %v) {
  %ins1 = bitinsert b64 %b, ptr %p, i32 0
  %ext = bitextract i8, b64 %ins1, i32 8
  ret i8 %ext
}
