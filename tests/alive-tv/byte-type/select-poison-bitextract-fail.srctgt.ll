; A select on a poison condition is poison, even when extracted from.

define i8 @src(b8 %a, i1 %c) {
  %r = bitcast b8 %a to i8
  ret i8 %r
}

define i8 @tgt(b8 %a, i1 %c) {
  %s = select i1 %c, b8 %a, b8 %a
  %e = bitextract i8, b8 %s, i32 0
  ret i8 %e
}

; ERROR: Target is more poisonous than source
