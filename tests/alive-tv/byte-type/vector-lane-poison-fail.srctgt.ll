; Only the lane with a poison bit is poison.

define <8 x i1> @src() {
  %b = bitcast <8 x i1> <i1 poison, i1 1, i1 1, i1 1, i1 1, i1 1, i1 1, i1 1> to b8
  %r = bitcast b8 %b to <8 x i1>
  ret <8 x i1> %r
}

define <8 x i1> @tgt() {
  ret <8 x i1> poison
}

; ERROR: Target is more poisonous than source
