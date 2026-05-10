define void @src(ptr %p) {
  store b8 1, ptr %p
  ret void
}

define void @tgt(ptr %p) {
  store i8 1, ptr %p
  ret void
}
