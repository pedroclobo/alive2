define ptr @src(ptr noundef %a) {
  %v = bitcast ptr %a to <8 x b8>
  %r = shufflevector <8 x b8> %v, <8 x b8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %p = bitcast <8 x b8> %r to ptr
  ret ptr %p
}

define ptr @tgt(ptr noundef %a) {
  ret ptr %a
}

; ERROR: Value mismatch
