module "About Objects (topics/about_objects.js)"
test "object type", ->
  empty_object = {}
  equals typeof (empty_object), __, "what is the type of an object?"

test "object literal notation", ->
  person = 
    __: __
    __: __
  
  equals person.name, "Amory Blaine", "what is the person's name?"
  equals person.age, 102, "what is the person's age?"

test "dynamically adding properties", ->
  person = {}
  person.__ = "Amory Blaine"
  person.__ = 102
  equals person.name, "Amory Blaine", "what is the person's name?"
  equals person.age, 102, "what is the person's age?"

test "adding properties from strings", ->
  person = {}
  person["__"] = "Amory Blaine"
  person["__"] = 102
  equals person.name, "Amory Blaine", "what is the person's name?"
  equals person.age, 102, "what is the person's age?"

test "adding functions", ->
  person = 
    name: "Amory Blaine"
    age: 102
    toString: ->
      __
  
  equals person.toString(), "I Amory Blaine am 102 years old.", "what should the toString function be?"
