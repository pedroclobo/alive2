; A vector bitextract of a bitcast vector reads one element per lane.

define <2 x i8> @src(<8 x i8> %x) {
  %b = bitcast <8 x i8> %x to <2 x b32>
  %e = bitextract <2 x i8>, <2 x b32> %b, <2 x i32> <i32 8, i32 24>
  ret <2 x i8> %e
}

define <2 x i8> @tgt(<8 x i8> %x) {
  %e = shufflevector <8 x i8> %x, <8 x i8> poison, <2 x i32> <i32 1, i32 7>
  ret <2 x i8> %e
}
