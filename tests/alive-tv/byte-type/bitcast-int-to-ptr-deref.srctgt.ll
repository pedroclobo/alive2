define i8 @src(ptr dereferenceable(1) %a) {
  %v = load i8, ptr %a
  ret i8 %v
}

define i8 @tgt(ptr dereferenceable(1) %a) {
  %i = ptrtoint ptr %a to i64
  %b = bitcast i64 %i to b64
  %p = bitcast b64 %b to ptr
  %v = load i8, ptr %p
  ret i8 %v
}

; ERROR: Source is more defined than target
