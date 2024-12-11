local function foo(a, b)
  if a == nil then
    a = 0
  end
  if type(a) ~= "number" then
    error("Invalid type for 'a': expected number, got " .. type(a))
  end
  return a + b
end

print(foo(nil, 5))  -- Output: 5
print(foo(nil, "hello"))  -- Error: Invalid type for 'a': expected number, got string