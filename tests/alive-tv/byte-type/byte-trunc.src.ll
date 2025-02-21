define i8 @b16_to_b8(b16 %v) {
  %t = trunc b16 %v to b8
  %c = bytecast exact b8 %t to i8
  ret i8 %c
}
