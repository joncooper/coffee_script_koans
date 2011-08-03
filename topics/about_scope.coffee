module "About Scope (topics/about_scope.js)"

thisIsAGlobalVariable = 77

test "global variables", ->
  equals thisIsAGlobalVariable, 77, "is thisIsAGlobalVariable defined in this scope?"

test "variables declared inside of a function", ->
  outerVariable = "outer"
  (->
    innerVariable = "inner"
    equals outerVariable, "outer", "is outerVariable defined in this scope?"
    equals innerVariable, "inner", "is innerVariable defined in this scope?"
  )()
  equals outerVariable, "outer", "is outerVariable defined in this scope?"
  isInnerVariableDefined = true
  try
    innerVariable
  catch e
    isInnerVariableDefined = false
  equals isInnerVariableDefined, false, "is innerVariable defined in this scope?"
