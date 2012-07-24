module Menu
  @line_length = 60
  @divider_cleaner = "-" * @line_length
  @divider_border = "##{@divider_cleaner}#"

  def self.select_from choices, display_options={}
    display_options = { divider: true }.merge display_options

    header = display_options[:header] || "You've got some options..."
    divider = @divider_cleaner if display_options[:divider]
    options = choices.zip(1..choices.length).map do |option|
      choice_number = option[1]
      choice_label  = option[0]
      "#{choice_number}) #{choice_label}"
    end
    prompt = display_options[:prompt] || "Make your choice"
    prompt += " > "
    invalid = display_options[:invalid] || "That is not a valid option."

    menu = <<-MENU
#{header}
#{divider}
#{options.join "\n"}

MENU

    selection = nil
    adjusted_choices = [nil] + choices

    until selection
      puts menu
      print prompt

      selection_index = gets.chomp.to_i
      puts

      unless selection = adjusted_choices[selection_index]
        puts invalid
        puts
      end
    end

    selection
  end

  def self.block_display body, options={}
    display_options = { }.merge options
    body_lines = to_hyphenated_lines(body)

    puts
    puts "  #{display_options[:title]}" if display_options[:title]
    puts @divider_border
    body_lines.each { |line| puts "|#{line.chomp.center(@line_length)}|" }
    puts @divider_border
    puts
  end

protected
  def self.to_hyphenated_lines to_wrap
    lines_to_wrap = to_wrap.lines
    return lines_to_wrap unless lines_to_wrap.any? {|line| line.length > @line_length }

    lines = []
    lines_to_wrap.each do |line|
      remainder = line
      until remainder.length < @line_length
        next_line = remainder[0..@line_length-4]
        remainder = remainder[@line_length-3..-1]

        # hyphenate broken words
        if next_line[-1] != ' ' and remainder[0] != ' '
          next_line += '-'
        end

        lines << next_line
      end
      lines << remainder
    end

    lines
  end
end