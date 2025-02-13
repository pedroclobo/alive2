define ptr @src(b64 %x) {
  %a = alloca b64
  store b64 %x, ptr %a
  %v = load ptr, ptr %a
  ret ptr %v
}

define ptr @tgt(b64 %x) {
  %1 = bytecast exact b64 %x to ptr
  ret ptr %1
}
