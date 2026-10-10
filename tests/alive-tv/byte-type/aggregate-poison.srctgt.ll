; poison of an aggregate with byte fields is poison in every field.

define i8 @src() {
  %v = extractvalue { i8, b8 } poison, 0
  ret i8 %v
}

define i8 @tgt() {
  ret i8 poison
}
