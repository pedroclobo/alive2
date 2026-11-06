; Each element of a vector bitextract only reads the bytes of its own
; element, so a load of the whole vector doesn't set the byte size.

define <2 x i8> @src(ptr %p) {
  %b = load <2 x b16>, ptr %p
  %e = bitextract <2 x i8>, <2 x b16> %b, <2 x i32> <i32 8, i32 0>
  ret <2 x i8> %e
}

define <2 x i8> @tgt(ptr %p) {
  %v = load <4 x i8>, ptr %p
  %e = shufflevector <4 x i8> %v, <4 x i8> poison, <2 x i32> <i32 1, i32 2>
  ret <2 x i8> %e
}
