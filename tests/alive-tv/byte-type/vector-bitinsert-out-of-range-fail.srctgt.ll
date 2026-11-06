; An out-of-range offset in one lane doesn't make the other lanes poison.

define <2 x b32> @src(<2 x b32> %b, <2 x i8> %v) {
  %i = bitinsert <2 x b32> %b, <2 x i8> %v, <2 x i32> <i32 8, i32 32>
  ret <2 x b32> %i
}

define <2 x b32> @tgt(<2 x b32> %b, <2 x i8> %v) {
  ret <2 x b32> poison
}

; ERROR: Value mismatch
