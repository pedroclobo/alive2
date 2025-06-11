define <2 x i32> @src(b64 %v) {
  %p = alloca i64
  store b64 %v, ptr %p
  %c = load <2 x i32>, ptr %p
  ret <2 x i32> %c
}

define <2 x i32> @tgt(b64 %v) {
  %c = bytecast exact b64 %v to <2 x i32>
  ret <2 x i32> %c
}
