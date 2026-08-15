; ERROR: Value mismatch

define ptr @src(b64 %b) {
  %p = bitextract ptr, b64 %b, i32 0
  ret ptr %p
}

define ptr @tgt(b64 %b) {
  %i = bitextract i64, b64 %b, i32 0
  %p = inttoptr i64 %i to ptr
  ret ptr %p
}
