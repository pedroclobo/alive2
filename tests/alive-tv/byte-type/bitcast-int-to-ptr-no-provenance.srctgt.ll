define ptr @src(ptr %a) {
  %i = ptrtoint ptr %a to i64
  %p = inttoptr i64 %i to ptr
  ret ptr %p
}

define ptr @tgt(ptr %a) {
  %i = ptrtoint ptr %a to i64
  %b = bitcast i64 %i to b64
  %p = bitcast b64 %b to ptr
  ret ptr %p
}

; ERROR: Value mismatch
