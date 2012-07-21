module Menu
  @line_length = 50
  @divider_cleaner = "-" * @line_length

  def self.welcome
    puts <<-WELCOME

    Welcome to Miniablo! Your demise awaits...

    WELCOME
  end

  def self.character_select(character_classes)
    puts @divider_cleaner
    puts

    character_index = 1

    for character_class, attributes in character_classes
      puts "#{character_index}) #{character_class}"
      character_index += 1
      for attribute_name, attribute_points in attributes
        puts "#{attribute_name.rjust(14)}: #{attribute_points}"
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
  end
end