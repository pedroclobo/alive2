define <4 x ptr> @src(ptr %p) {
  %v = load <4 x b64>, ptr %p
  %c = bytecast <4 x b64> %v to <4 x ptr>
  ret <4 x ptr> %c
}

define <4 x ptr> @tgt(ptr %p) {
  %v = load <4 x ptr>, ptr %p
  ret <4 x ptr> %v
}
