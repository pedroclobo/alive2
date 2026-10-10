; A byte argument without pointer bytes doesn't escape the local.

declare void @f(b64)
declare ptr @g()

define i8 @src(i64 %x) {
  %p = alloca i8
  store i8 1, ptr %p
  %b = bitcast i64 %x to b64
  call void @f(b64 %b)
  %q = call ptr @g()
  store i8 2, ptr %q
  %v = load i8, ptr %p
  ret i8 %v
}

define i8 @tgt(i64 %x) {
  %p = alloca i8
  store i8 1, ptr %p
  %b = bitcast i64 %x to b64
  call void @f(b64 %b)
  %q = call ptr @g()
  store i8 2, ptr %q
  ret i8 1
}

define i8 @src_readnone() {
  %p = alloca i8
  store i8 1, ptr %p
  %b = bitcast ptr %p to b64
  call void @h(b64 %b)
  %q = call ptr @g()
  store i8 2, ptr %q
  %v = load i8, ptr %p
  ret i8 %v
}

define i8 @tgt_readnone() {
  %p = alloca i8
  store i8 1, ptr %p
  %b = bitcast ptr %p to b64
  call void @h(b64 %b)
  %q = call ptr @g()
  store i8 2, ptr %q
  ret i8 1
}

declare void @h(b64) memory(none)
