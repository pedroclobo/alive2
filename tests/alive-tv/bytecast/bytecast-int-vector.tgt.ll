define <4 x i8> @f1(ptr %p) {
  %v = load <4 x i8>, ptr %p
  ret <4 x i8> %v
}

define <4 x i16> @f2(ptr %p) {
  %v = load <4 x i16>, ptr %p
  ret <4 x i16> %v
}

define <4 x i16> @f3() {
  ret <4 x i16> <i16 1, i16 2, i16 3, i16 4>
}