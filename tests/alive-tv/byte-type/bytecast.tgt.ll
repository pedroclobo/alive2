define i8 @b8_to_i8(ptr %p) {
  %v = load i8, ptr %p
  ret i8 %v
}

define i16 @b16_to_i16(ptr %p) {
  %v = load i16, ptr %p
  ret i16 %v
}

define i32 @b32_to_i32(ptr %p) {
  %v = load i32, ptr %p
  ret i32 %v
}

define i64 @b64_to_i64(ptr %p) {
  %v = load i64, ptr %p
  ret i64 %v
}

define <2 x i32> @to_int_vec(ptr %p) {
  %v = load <2 x i32>, ptr %p
  ret <2 x i32> %v
}

define ptr @b64_to_ptr(ptr align 8 %p) {
  %v = load ptr, ptr %p
  ret ptr %v
}

define half @b16_to_half(ptr %p) {
  %v = load half, ptr %p
  ret half %v
}

define float @b32_to_float(ptr %p) {
  %v = load float, ptr %p
  ret float %v
}

define double @b64_to_double(ptr align 8 %p) {
  %v = load double, ptr %p
  ret double %v
}

define <2 x float> @to_float_vec(ptr %p) {
  %v = load <2 x float>, ptr %p
  ret <2 x float> %v
}

define <8 x i8> @_4b16_to_8i8(ptr %p) {
  %l = load <8 x i8>, ptr %p
  ret <8 x i8> %l
}

define <2 x ptr> @_4b32_to_2ptr(ptr %p) {
  %l = load <2 x ptr>, ptr %p
  ret <2 x ptr> %l
}

define <2 x i32> @b64_to_2i32(ptr %p) {
  %l = load <2 x i32>, ptr %p
  ret <2 x i32> %l
}
