module "All CoffeeScript Koans"

# equals
# ok
# not_ok
# equal
# notEqual
# deepEqual
# notDeepEqual
# strictEqual
# notStrictEqual
# raises

## Lots of help from
## "The Little Book on Coffee 
# module "Comments"

# test "single-line comments", ->
#   result = "saskatchewan"
#   # result = "saskatoon"
#   equals result, __, "what is the value of result?"

# test "multiline comments", ->
#   result = "saskatchewan"
# ###
#   result = "saskatoon"
#   result = "alouitious"
# ###
#   equals result, __, "what is the value of result?"

module "Variables"

# there are no global variables.
# scripts get wrapped with an anonymous function,
# keeping the local context, and automatically prefix
# all variable assignments with var

# to create a global, you have to set them on the global
# object ('window' in browsers), or with the following
# pattern:
#
# exports = this
# exports.MyVariable = "foo-bar"

module "Functions"

# Function declaration
# Function arguments
# Function invocation
# Function context

module "Object Literals"

# Arrays
# Hashes

module "Flow Control"

# if (and if then)
# else
# unless

module "Operators"

# is
# not
# weak equality operators (==) get magically converted
# strong ones (===)

module "String Interpolation"

test "variables can be interpolated into strings", ->
  animal = "monkey"
  kindOfAnimal = "cheeky #{animal}"
  equals kindOfAnimal, ___, "What kind of animal?"

test "expressions can be interpolated into strings", ->
  math = "2 * 2 = #{2 * 2}"
  equals math, ___, "How does the equation read?"

module "Iteration and Comprehensions"

test "iterating over arrays", ->
  output = ""
  for snack in ["pickles", "cheetos", "fishsticks"]
    output = output + " and " + snack
  equals output, ___, "What's for snackytime?"

test "iterating over arrays with index", ->
  sum = 0
  for snack, i in ["pickles", "cheetos", "fishsticks"]
    sum = sum + i
  equals sum, ___, "What's the total?"

test "iterating over an array on one line", ->
  underwaterZooSounds = []
  tickle = (animal) ->
    underwaterZooSounds.push "{animal} giggles"
  tickle cephalopod for cephalopod in ["Squid", "Octopus", "Chambered Nautilus"]
  equals underwaterZooSounds, ___, "What does an underwater zoo sound like?"

test "filtering with a comprehension", ->
  someNumbers = [1, 2, 3, 4, 5, 6]
  filteredNumbers = (number for number in list when number % 2 == 0)
  equals filteredNumbers[0], ___, "What is the first number in the filtered list of numbers?"

test "iterating over properties in objects", ->
  thatsHowItIs = []
  elements = fire: hot, water: wet, air: allAroundYou, earth: belowYou
  thatsHowItIs.push "#{element} is #{thisWay}" for element, thisWay of elements
  equals thatsHowItIs[1], ___, "What is water like?"

test "while is like map", ->
  count = 3
  dojoSounds = while count -= 1
    count + " gong"
  equals dojoSounds, ___, "What does the dojo sound like?"

module "Arrays"

test "ranges expand to array literals", ->
  someNumbers = [1..10]
  equals (typeof someNumbers), __, "What type is this?"

# Range with ..
# Range with ...
# A range on a variable gets turned into a slice
# You can replace an array slice with another array
# You can slice a string with a range
# Look to see if an element is in an array with 'in'
#   alert "mumble" if "taco" in ["taco", "rice", "noodle"]

module "Aliases & the Existential Operator"

# The prefix "@" means "this."
# :: is an alias for prototype
# The suffix ? is the existential operator and returns
# true unless a variables is null or undefined, like Ruby nil?
# You can use it in place of the || operator
# You can use it like Ruby's try:
#   blackKnight.getLegs()?.kick()
# You can call a value the same way, checking functionness
#   whiteKnight.guard? us

module "Classes"

# CoffeeScript magically uses prototypes to create classes.
# It adds syntactic sugar for static property inheritance
# and context persistence.

class Cephalopod

totallySweetAnimal = new Cephalopod

# constructors

class Cephalopod
  constructor: (kind) ->
    @kind = kind

# convenience constructor

class Cephalopod
  constructor: (@kind) ->




# test "defining functions", ->
#   square = (x) -> x * x
#   cube = (x) ->
#     square(x) * x

#   result = square(2) * cube(2)
#   equals result, __, "what is the value of result?"

# test "function parameters may have default values", ->
#   monkey = (mood = "cheeky") ->
#     "#{mood} monkey!"

#   result = monkey()
#   equals result, __, "what is the value of result?"

#   result = monkey("happy")
#   equals result, __, "what is the value of result?"

