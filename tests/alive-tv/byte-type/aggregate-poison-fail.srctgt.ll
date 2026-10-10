; poison of an aggregate with byte fields is not undef.

define i8 @src() {
  ret i8 undef
}

define i8 @tgt() {
  %v = extractvalue { i8, b8 } poison, 0
  ret i8 %v
}

; ERROR: Target is more poisonous than source
