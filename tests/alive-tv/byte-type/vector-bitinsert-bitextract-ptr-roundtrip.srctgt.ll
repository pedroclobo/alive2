; Pointers keep their provenance through a vector bitinsert and bitextract.

define <2 x ptr> @src(<2 x b64> %b, <2 x ptr> %p) {
  %i = bitinsert <2 x b64> %b, <2 x ptr> %p, <2 x i32> zeroinitializer
  %e = bitextract <2 x ptr>, <2 x b64> %i, <2 x i32> zeroinitializer
  ret <2 x ptr> %e
}

define <2 x ptr> @tgt(<2 x b64> %b, <2 x ptr> %p) {
  ret <2 x ptr> %p
}
