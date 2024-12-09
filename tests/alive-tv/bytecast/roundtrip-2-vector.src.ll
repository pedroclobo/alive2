define <4 x i8> @f1(<4 x i8> %b) {
  %1 = bitcast <4 x i8> %b to <4 x b8>
  %2 = bytecast <4 x b8> %1 to <4 x i8>
  ret <4 x i8> %2
}

define <4 x i16> @f2(<4 x i16> %b) {
  %1 = bitcast <4 x i16> %b to <4 x b16>
  %2 = bytecast <4 x b16> %1 to <4 x i16>
  ret <4 x i16> %2
}
