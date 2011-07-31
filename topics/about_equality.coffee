module "About Equality (topics/about_equality.js)"
test "numeric equality", ->
  equals 3 + __, 7, "hmmmm?"

test "string equality", ->
  equals "3" + __, "37", "concatenate the strings"

test "equality without type coercion", ->
  ok 3 == __, "what is exactly equal to 3?"

test "equality with type coercion", ->
  ok 3 == "__", "what string is equal to 3, with type coercion?"

test "string literals", ->
  equals "frankenstein", "__", "quote types are interchangable, but must match."
