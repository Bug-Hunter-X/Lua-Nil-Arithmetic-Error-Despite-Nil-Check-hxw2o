local function foo(a, b)
  if a == nil then
    a = 0  -- This line might seem correct, but it's not!
  end
  return a + b
end

print(foo(nil, 5))  -- Output: 5 (Correct)
print(foo(nil, "hello")) -- Error: attempt to perform arithmetic on a nil value