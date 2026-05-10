define i8 @src_f1(i8 %b) {
  %1 = bitcast i8 %b to b8
  %2 = bitcast b8 %1 to i8
  ret i8 %2
}

define i8 @tgt_f1(i8 %b) {
  ret i8 %b
}

define i16 @src_f2(i16 %b) {
  %1 = bitcast i16 %b to b16
  %2 = bitcast b16 %1 to i16
  ret i16 %2
}

define i16 @tgt_f2(i16 %b) {
  ret i16 %b
}

define i32 @src_f3(i32 %b) {
  %1 = bitcast i32 %b to b32
  %2 = bitcast b32 %1 to i32
  ret i32 %2
}

define i32 @tgt_f3(i32 %b) {
  ret i32 %b
}

define i64 @src_f4(i64 %b) {
  %1 = bitcast i64 %b to b64
  %2 = bitcast b64 %1 to i64
  ret i64 %2
}

define i64 @tgt_f4(i64 %b) {
  ret i64 %b
}

define <2 x i32> @src_f5(<2 x i32> %b) {
  %1 = bitcast <2 x i32> %b to <2 x b32>
  %2 = bitcast <2 x b32> %1 to <2 x i32>
  ret <2 x i32> %2
}

define <2 x i32> @tgt_f5(<2 x i32> %b) {
  ret <2 x i32> %b
}

define ptr @src_f6(ptr %p) {
  %1 = bitcast ptr %p to b64
  %2 = bitcast b64 %1 to ptr
  ret ptr %2
}

define ptr @tgt_f6(ptr %p) {
  ret ptr %p
}

define <4 x ptr> @src_f7(<4 x ptr> %i) {
  %1 = bitcast <4 x ptr> %i to <4 x b64>
  %2 = bitcast <4 x b64> %1 to <4 x ptr>
  ret <4 x ptr> %2
}

define <4 x ptr> @tgt_f7(<4 x ptr> %i) {
  ret <4 x ptr> %i
}
