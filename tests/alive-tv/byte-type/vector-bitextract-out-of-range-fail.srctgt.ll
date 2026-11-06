; An out-of-range offset in one lane doesn't make the other lanes poison.

define <2 x i8> @src(<2 x b32> %b) {
  %e = bitextract <2 x i8>, <2 x b32> %b, <2 x i32> <i32 8, i32 32>
  ret <2 x i8> %e
}

define <2 x i8> @tgt(<2 x b32> %b) {
  ret <2 x i8> poison
}

; ERROR: Target is more poisonous than source
