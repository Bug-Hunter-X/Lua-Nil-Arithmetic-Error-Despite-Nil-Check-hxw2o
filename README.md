# Lua Nil Arithmetic Error Despite Nil Check

This repository demonstrates a subtle bug in Lua related to nil values and arithmetic operations.  Even with a seemingly correct `nil` check, an error can occur if the alternative type is incompatible with the arithmetic operation.

The `bug.lua` file contains the problematic code. The `bugSolution.lua` file shows the corrected version.

**Issue:**
Lua's dynamic typing, while flexible, can cause unexpected behavior when mixing different types in arithmetic operations, particularly with `nil` values.  The initial attempt to resolve nil by setting `a = 0` only resolves the case when `b` is a number, not a string.

**Solution:**
The solution involves adding a type check to handle cases where `a` might not be a number after the nil check. This can be done through explicit type conversion or checking the type using `type(a)`.
