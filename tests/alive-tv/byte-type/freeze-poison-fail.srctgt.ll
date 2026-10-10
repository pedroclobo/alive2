; freeze of a poison byte is not poison.

define i8 @src() {
  %f = freeze b8 poison
  %i = bitcast b8 %f to i8
  ret i8 %i
}

define i8 @tgt() {
  ret i8 poison
}

; ERROR: Target is more poisonous than source
