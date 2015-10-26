# coding: utf-8
# 返回当前的执行栈, current executin stack
# 返回的是一个Array，以file:line, file:line: in `method'这样的形式组成
# caller(start = 1, length = nil) -> array or nil
puts caller.length
puts caller.inspect
puts caller(3).inspect
