define ptr @src(b64 %b) {
  %p = bitextract ptr, b64 %b, i32 0
  %ins = bitinsert b64 %b, ptr %p, i32 0
  %p2 = bitextract ptr, b64 %ins, i32 0
  ret ptr %p2
}

define ptr @tgt(b64 %b) {
  %p = bitextract ptr, b64 %b, i32 0
  ret ptr %p
}
