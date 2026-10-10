; undef of a byte type is not poison.

define i8 @src() {
  %r = bitcast b8 undef to i8
  ret i8 %r
}

define i8 @tgt() {
  ret i8 poison
}

; ERROR: Target is more poisonous than source
