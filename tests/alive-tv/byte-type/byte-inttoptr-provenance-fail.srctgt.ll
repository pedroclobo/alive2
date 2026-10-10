; A pointer from inttoptr has wildcard provenance, so its bytes can't be
; replaced with integer bytes.

define b64 @src(i64 %x) {
  %p = inttoptr i64 %x to ptr
  %b = bitcast ptr %p to b64
  ret b64 %b
}

define b64 @tgt(i64 %x) {
  %b = bitcast i64 %x to b64
  ret b64 %b
}

; ERROR: Value mismatch
