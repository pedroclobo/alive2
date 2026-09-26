target datalayout = "E-p:64:64:64"

define b128 @src(<2 x ptr> %x) {
  %a = alloca <2 x ptr>
  store <2 x ptr> %x, ptr %a
  %v = load b128, ptr %a
  ret b128 %v
}

define b128 @tgt(<2 x ptr> %x) {
  %1 = bitcast <2 x ptr> %x to b128
  ret b128 %1
}
