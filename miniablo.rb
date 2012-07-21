


puts "Initializing..."

require './lib/characters'
require './lib/items'
require './lib/monsters'
require './lib/menu'

puts "Ready!"

character_classes = {
  "Barbarian" => {
    "Strength"     => 20,
    "Dexterity"    => 15,
    "Intelligence" => 10,
    "Health"       => 200
  },
  "Rogue" => {
    "Strength"     => 15,
    "Dexterity"    => 20,
    "Intelligence" => 15,
    "Health"       => 150
  },
  "Wizard" => {
    "Strength"     => 10,
    "Dexterity"    => 10,
    "Intelligence" => 30,
    "Health"       => 100
  }
}

Menu.welcome
Menu.character_select(character_classes)