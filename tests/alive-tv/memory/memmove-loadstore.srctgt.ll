define void @src(ptr %s, ptr %d) {
  call void @llvm.memmove.p0i8.p0i8.i64(ptr %d, ptr %s, i64 1, i1 false)
  ret void
}

define void @tgt(ptr %s, ptr %d) {
  %v = load b8, ptr %s
  store b8 %v, ptr %d
  ret void
}

declare void @llvm.memmove.p0i8.p0i8.i64(ptr, ptr, i64, i1)
