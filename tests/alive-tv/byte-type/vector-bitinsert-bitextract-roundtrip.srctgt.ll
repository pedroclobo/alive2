; Reinserting the bits just extracted, or extracting the bits just inserted,
; at the same offsets, gives back the original value.

define <2 x b32> @src_b8(<2 x b32> %b) {
  %ext = bitextract <2 x b8>, <2 x b32> %b, <2 x i32> <i32 0, i32 8>
  %ins = bitinsert <2 x b32> %b, <2 x b8> %ext, <2 x i32> <i32 0, i32 8>
  ret <2 x b32> %ins
}

define <2 x b32> @tgt_b8(<2 x b32> %b) {
  ret <2 x b32> %b
}

define <2 x b64> @src_b16_var(<2 x b64> %b, <2 x i32> %n) {
  %ext = bitextract <2 x b16>, <2 x b64> %b, <2 x i32> %n
  %ins = bitinsert <2 x b64> %b, <2 x b16> %ext, <2 x i32> %n
  ret <2 x b64> %ins
}

define <2 x b64> @tgt_b16_var(<2 x b64> %b, <2 x i32> %n) {
  ret <2 x b64> %b
}

define <2 x i16> @src_i16(<2 x b64> %b, <2 x i16> %v) {
  %ins = bitinsert <2 x b64> %b, <2 x i16> %v, <2 x i32> <i32 16, i32 48>
  %ext = bitextract <2 x i16>, <2 x b64> %ins, <2 x i32> <i32 16, i32 48>
  ret <2 x i16> %ext
}

define <2 x i16> @tgt_i16(<2 x b64> %b, <2 x i16> %v) {
  ret <2 x i16> %v
}

define <2 x float> @src_float(<2 x b64> %b, <2 x float> %v) {
  %ins = bitinsert <2 x b64> %b, <2 x float> %v, <2 x i32> <i32 0, i32 32>
  %ext = bitextract <2 x float>, <2 x b64> %ins, <2 x i32> <i32 0, i32 32>
  ret <2 x float> %ext
}

define <2 x float> @tgt_float(<2 x b64> %b, <2 x float> %v) {
  ret <2 x float> %v
}
