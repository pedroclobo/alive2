; freeze of a vector of bytes freezes each lane.

define <2 x i8> @src() {
  %f = freeze <2 x b8> <b8 poison, b8 1>
  %i = bitcast <2 x b8> %f to <2 x i8>
  ret <2 x i8> %i
}

define <2 x i8> @tgt() {
  ret <2 x i8> <i8 poison, i8 1>
}

; ERROR: Target is more poisonous than source
