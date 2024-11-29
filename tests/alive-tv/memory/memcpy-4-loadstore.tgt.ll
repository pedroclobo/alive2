define void @f1(ptr %p, ptr %q) {
  %v = load b8, ptr %p
  store b8 %v, ptr %q
  ret void
}

define void @f2(ptr %p, ptr %q) {
  %v = load b16, ptr %p
  store b16 %v, ptr %q
  ret void
}

define void @f3(ptr %p, ptr %q) {
  %v = load b32, ptr %p
  store b32 %v, ptr %q
  ret void
}

define void @f4(ptr %p, ptr %q) {
  %v = load b64, ptr %p
  store b64 %v, ptr %q
  ret void
}
