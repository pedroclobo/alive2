define <2 x b8> @_2i8_to_2b8(i16 %v, ptr %p) {
  store i16 %v, ptr %p
  %l = load <2 x b8>, ptr %p
  ret <2 x b8> %l
}

define b16 @_test(<2 x i8> %v, ptr %p) {
  store <2 x i8> %v, ptr %p
  %l = load b16, ptr %p
  ret b16 %l
}

define <2 x b8> @_test2(<2 x i8> %v, ptr %p) {
  store <2 x i8> %v, ptr %p
  %l = load <2 x b8>, ptr %p
  ret <2 x b8> %l
}