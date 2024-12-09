define <4 x b8> @f1(<4 x b8> %b) {
  ret <4 x b8> %b
}

define <4 x b16> @f2(<4 x b16> %b) {
  ret <4 x b16> %b
}

define <4 x b8> @f3() {
  ret <4 x b8> <b8 1, b8 2, b8 3, b8 4>
}
