; Bytes of a pointer without provenance can be replaced with integer bytes
; holding the same address.

define b64 @src(i64 %x) {
  %p = getelementptr i8, ptr null, i64 %x
  %b = bitcast ptr %p to b64
  ret b64 %b
}

define b64 @tgt(i64 %x) {
  %b = bitcast i64 %x to b64
  ret b64 %b
}
