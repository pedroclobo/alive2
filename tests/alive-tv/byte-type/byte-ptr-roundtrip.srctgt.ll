; 32-bit pointers keep the queries tractable: byte to pointer casts observe
; the whole address.
target datalayout = "p:32:32"

define b32 @src(b32 %b) {
  %1 = bitcast b32 %b to ptr
  %2 = bitcast ptr %1 to b32
  ret b32 %2
}

define b32 @tgt(b32 %b) {
  ret b32 %b
}

define <2 x b32> @src_vec(<2 x b32> %b) {
  %1 = bitcast <2 x b32> %b to <2 x ptr>
  %2 = bitcast <2 x ptr> %1 to <2 x b32>
  ret <2 x b32> %2
}

define <2 x b32> @tgt_vec(<2 x b32> %b) {
  ret <2 x b32> %b
}
