; All 64 bits of the integer bytes form the address of the pointer.

define i1 @src(b64 %b) {
  %p = bitcast b64 %b to ptr
  %c = icmp eq ptr %p, null
  ret i1 %c
}

define i1 @tgt(b64 %b) {
  %e = bitextract i8, b64 %b, i32 0
  %c = icmp eq i8 %e, 0
  ret i1 %c
}

; ERROR: Value mismatch
