define ptr @src(b64 %b, ptr %p) {
  %ins = bitinsert b64 %b, ptr %p, i32 0
  %ext = bitextract ptr, b64 %ins, i32 0
  ret ptr %ext
}

define ptr @tgt(b64 %b, ptr %p) {
  ret ptr %p
}
