define void @f1(ptr %p, ptr %q) {
  call void @llvm.memmove.p0i8.p0i8.i64(ptr %q, ptr %p, i64 1, i1 false)
  ret void
}

define void @f2(ptr %p, ptr %q) {
  call void @llvm.memmove.p0i8.p0i8.i64(ptr %q, ptr %p, i64 2, i1 false)
  ret void
}

define void @f3(ptr %p, ptr %q) {
  call void @llvm.memmove.p0i8.p0i8.i64(ptr %q, ptr %p, i64 4, i1 false)
  ret void
}

define void @f4(ptr %p, ptr %q) {
  call void @llvm.memmove.p0i8.p0i8.i64(ptr %q, ptr %p, i64 8, i1 false)
  ret void
}

declare void @llvm.memmove.p0i8.p0i8.i64(ptr, ptr, i64, i1)
