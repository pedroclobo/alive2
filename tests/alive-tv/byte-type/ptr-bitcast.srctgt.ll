define b64 @src(ptr %x) {
  %a = alloca i64
  store ptr %x, ptr %a
  %v = load b64, ptr %a
  ret b64 %v
}

define b64 @tgt(ptr %x) {
  %1 = bitcast ptr %x to b64
  ret b64 %1
}
