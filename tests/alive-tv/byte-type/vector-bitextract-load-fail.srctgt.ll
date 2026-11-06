; Each element of a vector bitextract reads its own byte of the loaded
; element, not a neighbouring one.

define <2 x i8> @src(ptr %p) {
  %l = load <2 x b16>, ptr %p
  %b = freeze <2 x b16> %l
  %e = bitextract <2 x i8>, <2 x b16> %b, <2 x i32> <i32 8, i32 0>
  ret <2 x i8> %e
}

define <2 x i8> @tgt(ptr %p) {
  %l = load <4 x i8>, ptr %p
  %v = freeze <4 x i8> %l
  %e = shufflevector <4 x i8> %v, <4 x i8> poison, <2 x i32> <i32 0, i32 2>
  ret <2 x i8> %e
}

; ERROR: Value mismatch
