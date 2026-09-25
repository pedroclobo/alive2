define ptr @src(ptr %a) {
  %v = bitcast ptr %a to <8 x b8>
  %r = shufflevector <8 x b8> %v, <8 x b8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %p = bitcast <8 x b8> %r to ptr
  ret ptr %p
}

define ptr @tgt(ptr %a) {
  %i = ptrtoint ptr %a to i64
  %s = call i64 @llvm.bswap.i64(i64 %i)
  %p = inttoptr i64 %s to ptr
  ret ptr %p
}

declare i64 @llvm.bswap.i64(i64)
