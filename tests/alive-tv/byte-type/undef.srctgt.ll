; undef of a byte type is undef per bit.

define b8 @src_const() {
  ret b8 undef
}

define b8 @tgt_const() {
  ret b8 0
}

define i8 @src_bitcast() {
  %r = bitcast b8 undef to i8
  ret i8 %r
}

define i8 @tgt_bitcast() {
  ret i8 undef
}

define b16 @src_poison_byte() {
  %r = bitinsert b16 poison, i8 0, i32 8
  ret b16 %r
}

define b16 @tgt_poison_byte() {
  %r = bitinsert b16 undef, i8 0, i32 8
  ret b16 %r
}
