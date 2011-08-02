module "About Asserts (topics/about_asserts.js)"

test "ok", ->
  ok true, "what will satisfy the ok assertion?"

test "not_ok", ->
  not_ok false, "what is a false value?"

test "equals", ->
  equals 1 + 1, 2, "what will satisfy the equals assertion?"
