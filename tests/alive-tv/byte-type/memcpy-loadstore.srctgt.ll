define void @src_f1(ptr %p, ptr %q) {
  call void @llvm.memcpy.p0i8.p0i8.i64(ptr align 1 %q, ptr align 1 %p, i64 1, i1 false)
  ret void
}

define void @tgt_f1(ptr %p, ptr %q) {
  %v = load b8, ptr %p
  store b8 %v, ptr %q
  ret void
}

define void @src_f2(ptr %p, ptr %q) {
  call void @llvm.memcpy.p0i8.p0i8.i64(ptr align 2 %q, ptr align 2 %p, i64 2, i1 false)
  ret void
}

define void @tgt_f2(ptr %p, ptr %q) {
  %v = load b16, ptr %p
  store b16 %v, ptr %q
  ret void
}

define void @src_f3(ptr %p, ptr %q) {
  call void @llvm.memcpy.p0i8.p0i8.i64(ptr align 4 %q, ptr align 4 %p, i64 4, i1 false)
  ret void
}

define void @tgt_f3(ptr %p, ptr %q) {
  %v = load b32, ptr %p
  store b32 %v, ptr %q
  ret void
}

declare void @llvm.memcpy.p0i8.p0i8.i64(ptr, ptr, i64, i1)
