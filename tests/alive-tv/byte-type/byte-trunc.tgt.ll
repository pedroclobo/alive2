define i8 @b16_to_b8(b16 %v) {
  %c = bytecast exact b16 %v to i8
  ret i8 %c
}
