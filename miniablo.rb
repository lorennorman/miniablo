
puts "Initializing..."

require './lib/characters'
require './lib/items'
require './lib/monsters'
require './lib/menu'

puts "Ready!"

Menu.welcome
Menu.character_select(Character.classes)