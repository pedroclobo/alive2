; A select on a poison condition is poison, even when stored.

define void @src(b8 %a, i1 %c, ptr %p) {
  store b8 %a, ptr %p
  ret void
}

define void @tgt(b8 %a, i1 %c, ptr %p) {
  %s = select i1 %c, b8 %a, b8 %a
  store b8 %s, ptr %p
  ret void
}

; ERROR: Mismatch in memory
