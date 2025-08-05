define b64 @src(b64 %b) {
  %1 = bytecast exact b64 %b to ptr
  %2 = bitcast ptr %1 to b64
  ret b64 %2
}

define b64 @tgt(b64 %b) {
  ret b64 %b
}
