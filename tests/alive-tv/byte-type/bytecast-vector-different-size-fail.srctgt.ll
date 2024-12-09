define <2 x i8> @src(ptr %p) {
  %v = load <2 x b32>, ptr %p
  %c = bytecast exact <2 x b32> %v to <2 x i8>
  ret <2 x i8> %c
}

define <2 x i8> @to_int_vec_trunc(ptr %p) {
  %v = load <2 x i8>, ptr %p
  ret <2 x i8> %v
}

; ERROR: Target is more poisonous than source
