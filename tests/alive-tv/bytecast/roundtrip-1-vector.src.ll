define <4 x b8> @f1(<4 x b8> %b) {
  %1 = bytecast <4 x b8> %b to <4 x i8>
  %2 = bitcast <4 x i8> %1 to <4 x b8>
  ret <4 x b8> %2
}

define <4 x b16> @f2(<4 x b16> %b) {
  %1 = bytecast <4 x b16> %b to <4 x i16>
  %2 = bitcast <4 x i16> %1 to <4 x b16>
  ret <4 x b16> %2
}
