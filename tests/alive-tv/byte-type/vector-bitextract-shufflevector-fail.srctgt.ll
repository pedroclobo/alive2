; Each lane reads from its own element of the bitcast vector.

define <2 x i8> @src(<8 x i8> noundef %x) {
  %b = bitcast <8 x i8> %x to <2 x b32>
  %e = bitextract <2 x i8>, <2 x b32> %b, <2 x i32> <i32 8, i32 24>
  ret <2 x i8> %e
}

define <2 x i8> @tgt(<8 x i8> noundef %x) {
  %e = shufflevector <8 x i8> %x, <8 x i8> poison, <2 x i32> <i32 1, i32 3>
  ret <2 x i8> %e
}

; ERROR: Value mismatch
