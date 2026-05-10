define b8 @src_test1() {
  %aff = alloca b8
  %1 = load b8, ptr %aff
  ret b8 %1
}

define b8 @tgt_test1() {
  ret b8 undef
}

define b32 @src_test2() {
  %aff = alloca b32
  %1 = load b32, ptr %aff
  ret b32 %1
}

define b32 @tgt_test2() {
  ret b32 undef
}

define b64 @src_test3() {
  %aff = alloca b64
  %1 = load b64, ptr %aff
  ret b64 %1
}

define b64 @tgt_test3() {
  ret b64 undef
}
