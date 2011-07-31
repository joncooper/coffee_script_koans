module "About Reflection (topics/about_reflection.js)"
test "typeof", ->
  equals typeof ({}), __, "what is the type of an empty object?"
  equals typeof ("apple"), __, "what is the type of a string?"
  equals typeof (-5), __, "what is the type of -5?"
  equals typeof (false), __, "what is the type of false?"

test "property enumeration", ->
  keys = []
  values = []
  person = 
    name: "Amory Blaine"
    age: 102
    unemployed: true
  
  for propertyName of person
    keys.push propertyName
    values.push person[propertyName]
  ok keys.equalTo([ "__", "__", "__" ]), "what are the property names of the object?"
  ok values.equalTo([ "__", __, __ ]), "what are the property values of the object?"

test "hasOwnProperty", ->
  keys = []
  fruits = [ "apple", "orange" ]
  for propertyName of fruits
    keys.push propertyName
  ok keys.equalTo([ "__", "__", "__" ]), "what are the properties of the array?"
  ownKeys = []
  for propertyName of fruits
    ownKeys.push propertyName  if fruits.hasOwnProperty(propertyName)
  ok ownKeys.equalTo([ "__", "__" ]), "what are the own properties of the array?"

test "eval", ->
  result = ""
  eval "result = 'apple' + ' ' + 'pie'"
  equals result, __, "what is the value of result?"
