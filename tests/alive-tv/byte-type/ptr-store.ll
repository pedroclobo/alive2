define b8 @is_ctrl_altering_stmt(ptr %t, b8 %byte) {
  %t.addr = alloca ptr
  store ptr null, ptr %t.addr
  %1 = load b8, ptr %t
  ret b8 %1
}

define b8 @is_ctrl_altering_stmt(ptr %t, b8 %byte) {
  %1 = load b8, ptr %t
  ret b8 %1
}
