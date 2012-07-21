
puts "Initializing..."

require './lib/characters'
require './lib/speech'
require './lib/items'
require './lib/monsters'

puts "Ready!"


line_length = 50

divider_cleaner = "-" * line_length

puts <<-WELCOME

Welcome to Miniablo! Your demise awaits...

WELCOME

puts divider_cleaner
puts

character_index = 1

for character_class, attributes in Character.classes
  puts "#{character_index}) #{character_class}"
  character_index += 1
  for attribute_name, attribute_points in attributes
    puts "#{attribute_name.rjust(5)}: #{attribute_points}"
  end
  puts 
end

print "Please choose a character based on their corresponding number: "

character_choice = gets.chomp.to_i

if [1, 2, 3].include? character_choice
  puts
  puts "You have chosen #{character_choice}."
else
  puts
  puts "Sorry that is an incorrect response. Please choose a character based on their
  respective number."
end
