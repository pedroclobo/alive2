; Store to load forwarding of bytes keeps their pointer bytes.

define b64 @src(b64 %x, ptr %p) {
  store b64 %x, ptr %p
  %y = load b64, ptr %p
  ret b64 %y
}

define b64 @tgt(b64 %x, ptr %p) {
  store b64 %x, ptr %p
  ret b64 %x
}
