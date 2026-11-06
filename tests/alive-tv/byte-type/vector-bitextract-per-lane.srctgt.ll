; Each lane reads its own element at its own offset.

define <2 x i8> @src(<2 x i32> %x) {
  %b = bitcast <2 x i32> %x to <2 x b32>
  %e = bitextract <2 x i8>, <2 x b32> %b, <2 x i32> <i32 0, i32 8>
  ret <2 x i8> %e
}

define <2 x i8> @tgt(<2 x i32> %x) {
  %s = lshr <2 x i32> %x, <i32 0, i32 8>
  %t = trunc <2 x i32> %s to <2 x i8>
  ret <2 x i8> %t
}
