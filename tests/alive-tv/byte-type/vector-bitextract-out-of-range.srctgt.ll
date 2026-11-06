; An out-of-range or poison offset only makes its own lane poison.

define <3 x i8> @src(<3 x b32> %b) {
  %e = bitextract <3 x i8>, <3 x b32> %b, <3 x i32> <i32 8, i32 32, i32 poison>
  ret <3 x i8> %e
}

define <3 x i8> @tgt(<3 x b32> %b) {
  %b0 = extractelement <3 x b32> %b, i64 0
  %e0 = bitextract i8, b32 %b0, i32 8
  %r = insertelement <3 x i8> poison, i8 %e0, i64 0
  ret <3 x i8> %r
}
