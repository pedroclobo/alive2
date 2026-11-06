; An out-of-range or poison offset only makes its own lane poison.

define <3 x b32> @src(<3 x b32> %b, <3 x i8> %v) {
  %i = bitinsert <3 x b32> %b, <3 x i8> %v, <3 x i32> <i32 8, i32 32, i32 poison>
  ret <3 x b32> %i
}

define <3 x b32> @tgt(<3 x b32> %b, <3 x i8> %v) {
  %b0 = extractelement <3 x b32> %b, i64 0
  %v0 = extractelement <3 x i8> %v, i64 0
  %i0 = bitinsert b32 %b0, i8 %v0, i32 8
  %r = insertelement <3 x b32> poison, b32 %i0, i64 0
  ret <3 x b32> %r
}
