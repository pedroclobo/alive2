define b8 @f1(b8 %b) {
  %1 = bytecast b8 %b to i8
  %2 = bitcast i8 %1 to b8
  ret b8 %2
}

define b16 @f2(b16 %b) {
  %1 = bytecast b16 %b to i16
  %2 = bitcast i16 %1 to b16
  ret b16 %2
}

define b32 @f3(b32 %b) {
  %1 = bytecast b32 %b to i32
  %2 = bitcast i32 %1 to b32
  ret b32 %2
}

define b64 @f4(b64 %b) {
  %1 = bytecast b64 %b to i64
  %2 = bitcast i64 %1 to b64
  ret b64 %2
}

define b8 @f5() {
  %1 = bytecast b8 2 to i8
  %2 = bitcast i8 %1 to b8
  ret b8 %2
}

define b64 @f6(b64 %b) {
  %1 = bytecast b64 %b to ptr
  %2 = bitcast ptr %1 to b64
  ret b64 %2
}
