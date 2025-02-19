define b64 @src() {
  %a = alloca ptr
  store ptr poison, ptr %a
  %v = load b64, ptr %a
  ret b64 %v
}

define b64 @tgt() {
  %1 = bitcast ptr poison to b64
  ret b64 %1
}
