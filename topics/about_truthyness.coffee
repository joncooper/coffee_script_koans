module "About Truthyness (topics/about_truthyness.js)"
test "truthyness of positive numbers", ->
  oneIsTruthy = (if 1 then true else false)
  equals oneIsTruthy, __, "is one truthy?"

test "truthyness of negative numbers", ->
  negativeOneIsTruthy = (if -1 then true else false)
  equals negativeOneIsTruthy, __, "is -1 truthy?"

test "truthyness of zero", ->
  zeroIsTruthy = (if 0 then true else false)
  equals zeroIsTruthy, __, "is 0 truthy?"

test "truthyness of null", ->
  nullIsTruthy = (if null then true else false)
  equals nullIsTruthy, __, "is null truthy?"
