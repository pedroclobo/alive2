; Each lane writes its own element at its own offset.

define <2 x i32> @src(<2 x i32> %x, <2 x i8> %y) {
  %b = bitcast <2 x i32> %x to <2 x b32>
  %i = bitinsert <2 x b32> %b, <2 x i8> %y, <2 x i32> <i32 0, i32 8>
  %r = bitcast <2 x b32> %i to <2 x i32>
  ret <2 x i32> %r
}

define <2 x i32> @tgt(<2 x i32> %x, <2 x i8> %y) {
  %clear = and <2 x i32> %x, <i32 -256, i32 -65281>
  %z = zext <2 x i8> %y to <2 x i32>
  %s = shl <2 x i32> %z, <i32 0, i32 8>
  %r = or <2 x i32> %clear, %s
  ret <2 x i32> %r
}
