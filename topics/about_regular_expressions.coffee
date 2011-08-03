module "About Regular Expressions (topics/about_regular_expressions.js)"

# test "exec", ->
#   numberFinder = /(\d).*(\d)/
#   results = numberFinder.exec("what if 6 turned out to be 9?")
#   console.log results
#   ok results.equalTo([ "what if 6 turned out to be 9?", "6", "9" ]), "what is the value of results?"

test "test", ->
  containsSelect = /select/.test("  select * from users ")
  equals containsSelect, true, "does the string provided contain \"select\"?"

test "match", ->
  matches = "what if 6 turned out to be 9?".match(/(\d)/g)
  ok matches.equalTo([ "6", "9" ]), "what is the value of matches?"

test "replace", ->
  pie = "apple pie".replace("apple", "strawberry")
  equals pie, "strawberry pie", "what is the value of pie?"
  pie = "what if 6 turned out to be 9?".replace(/\d/g, (number) ->
    map = 
      6: "six"
      9: "nine"

    map[number]
  )
  equals pie, "what if six turned out to be nine?", "what is the value of pie?"
