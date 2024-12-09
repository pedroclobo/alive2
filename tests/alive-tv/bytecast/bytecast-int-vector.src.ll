define <4 x i8> @f1(ptr %p) {
  %v = load <4 x b8>, ptr %p
  %c = bytecast <4 x b8> %v to <4 x i8>
  ret <4 x i8> %c
}

define <4 x i16> @f2(ptr %p) {
  %v = load <4 x b16>, ptr %p
  %c = bytecast <4 x b16> %v to <4 x i16>
  ret <4 x i16> %c
}
