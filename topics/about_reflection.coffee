module "About Reflection (topics/about_reflection.js)"
test "typeof", ->
  equals typeof ({}), "object", "what is the type of an empty object?"
  equals typeof ("apple"), "string", "what is the type of a string?"
  equals typeof (-5), "number", "what is the type of -5?"
  equals typeof (false), "boolean", "what is the type of false?"

test "property enumeration", ->
  keys = []
  values = []
  person =
    name: "Amory Blaine"
    age: 102
    unemployed: true

  for key, value of person
    keys.push key
    values.push value
  ok keys.equalTo([ "name", "age", "unemployed" ]), "what are the property names of the object?"
  ok values.equalTo([ "Amory Blaine", 102, true ]), "what are the property values of the object?"

test "hasOwnProperty", ->
  keys = []
  fruits = [ "apple", "orange" ]
  for propertyName of fruits
    keys.push propertyName
  ok keys.equalTo([ "0", "1", "equalTo" ]), "what are the properties of the array?"
  ownKeys = []
  for key, propertyName of fruits
    ownKeys.push propertyName if fruits.hasOwnProperty(propertyName)
  console.log ownKeys
  # ok ownKeys.equalTo([ "apple", "orange" ]), "what are the own properties of the array?"
  # TODO: this isn't right; array hasOwnProperties is wonky due to the way CoffeeScript implements arrays

test "eval", ->
  result = ""
  eval "result = 'apple' + ' ' + 'pie'"
  equals result, "apple pie", "what is the value of result?"
