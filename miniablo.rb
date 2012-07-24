require './lib/logger'
require './lib/util'
require './lib/characters'
require './lib/items'
require './lib/monsters'
require './lib/location'
require './lib/actions/travel_action'
require './lib/scenarios'
require './lib/world'
require './lib/menu'

Menu.block_display <<-WELCOME

Welcome to Miniablo!
====================

An epic RPG, shrunk down and crammed into the console. What could be better?

WELCOME

player_class = Menu.select_from(Character.classes,
  header: "Choose a character class from the list, below:",
  prompt: "Choose a class",
  invalid: "Sorry that is an incorrect response. Please choose a character based on their respective number.")

puts "Welcome, brave #{player_class.name}."

World.start!(:simple)