; Each lane of a vector with sub-byte lanes is converted on its own.

define <8 x i1> @src(<8 x i1> %v) {
  ret <8 x i1> %v
}

define <8 x i1> @tgt(<8 x i1> %v) {
  %b = bitcast <8 x i1> %v to b8
  %r = bitcast b8 %b to <8 x i1>
  ret <8 x i1> %r
}
