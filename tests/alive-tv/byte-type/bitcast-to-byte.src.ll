define b8 @i8_to_b8(i8 %v, ptr %p) {
  store i8 %v, ptr %p
  %l = load b8, ptr %p
  ret b8 %l
}

define b16 @i16_to_b16(i16 %v, ptr %p) {
  store i16 %v, ptr %p
  %l = load b16, ptr %p
  ret b16 %l
}

define b32 @i32_to_b32(i32 %v, ptr %p) {
  store i32 %v, ptr %p
  %l = load b32, ptr %p
  ret b32 %l
}

define b64 @i64_to_b64(i64 %v, ptr %p) {
  store i64 %v, ptr %p
  %l = load b64, ptr %p
  ret b64 %l
}

define b64 @ptr_to_b64(ptr %v, ptr %p) {
  store ptr %v, ptr %p
  %l = load b64, ptr %p
  ret b64 %l
}

define b16 @half_to_b16(half %v, ptr %p) {
  store half %v, ptr %p
  %l = load b16, ptr %p
  ret b16 %l
}

define b32 @float_to_b32(float %v, ptr %p) {
  store float %v, ptr %p
  %l = load b32, ptr %p
  ret b32 %l
}

; define b64 @double_to_b64(double %v, ptr %p) {
;   store double %v, ptr %p
;   %l = load b64, ptr %p
;   ret b64 %l
; }

define b8 @b8_to_b8(b8 %v, ptr %p) {
  store b8 %v, ptr %p
  %l = load b8, ptr %p
  ret b8 %l
}

define b16 @b16_to_b16(b16 %v, ptr %p) {
  store b16 %v, ptr %p
  %l = load b16, ptr %p
  ret b16 %l
}

define b32 @b32_to_b32(b32 %v, ptr %p) {
  store b32 %v, ptr %p
  %l = load b32, ptr %p
  ret b32 %l
}

define b64 @b64_to_b64(b64 %v, ptr %p) {
  store b64 %v, ptr %p
  %l = load b64, ptr %p
  ret b64 %l
}

define <2 x b8> @_2i8_to_2b8(<2 x i8> %v, ptr %p) {
  store <2 x i8> %v, ptr %p
  %l = load <2 x b8>, ptr %p
  ret <2 x b8> %l
}