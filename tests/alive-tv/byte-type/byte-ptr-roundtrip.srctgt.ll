; ERROR: Value mismatch

define b64 @src(b64 %b) {
  %1 = bitcast b64 %b to ptr
  %2 = bitcast ptr %1 to b64
  ret b64 %2
}

define b64 @tgt(b64 %b) {
  ret b64 %b
}

define <2 x b64> @src_vec(<2 x b64> %b) {
  %1 = bitcast <2 x b64> %b to <2 x ptr>
  %2 = bitcast <2 x ptr> %1 to <2 x b64>
  ret <2 x b64> %2
}

define <2 x b64> @tgt_vec(<2 x b64> %b) {
  ret <2 x b64> %b
}
