module "About Functions And Closure (topics/about_functions_and_closure.js)"
test "defining functions directly", ->
  changeResult = ->
    result = "b"
  result = "a"
  changeResult()
  equals result, "a", "what is the value of result?"

test "assigning functions to variables", ->
  triple = (input) ->
    input * 3
  
  equals triple(4), 12, "what is triple 4?"

test "self invoking functions", ->
  publicValue = "shared"
  ((pv) ->
    secretValue = "password"
    equals pv, "shared", "what is the value of pv?"
    equals typeof (secretValue), "string", "is secret value available in this context?"
    equals typeof (pv), "string", "is public value available in this context?"
  ) publicValue
  equals typeof (secretValue), "undefined", "is secret value available in this context?"
  equals typeof (publicValue), "string", "is public value available in this context?"

test "arguments array", ->
  add = (integers...) ->
    total = 0

    for i in arguments
      total += i
    
    total

  equals add(1, 2, 3, 4, 5), 15, "add 1,2,3,4,5"
  equals add(4, 7, -2), 9, "add 1,2,3,4,5"
