module "Functions"

test "defining functions", ->
  square = (x) -> x * x
  cube = (x) ->
    square(x) * x

  result = square(2) * cube(2)
  equals result, __, "what is the value of result?"

test "function parameters may have default values", ->
  monkey = (mood = "cheeky") ->
    "#{mood} monkey!"

  result = monkey()
  equals result, __, "what is the value of result?"

  result = monkey("happy")
  equals result, __, "what is the value of result?"
