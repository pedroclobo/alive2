target datalayout = "E-p:64:64:64"

define <2 x ptr> @src(b128 %x) {
  %a = alloca b128
  store b128 %x, ptr %a
  %v = load <2 x ptr>, ptr %a
  ret <2 x ptr> %v
}

define <2 x ptr> @tgt(b128 %x) {
  %1 = bitcast b128 %x to <2 x ptr>
  ret <2 x ptr> %1
}
