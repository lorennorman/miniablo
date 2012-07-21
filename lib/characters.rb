
module Characters
  @local_classes = {
    "barb" => "blah"
  }


  def self.classes
    @local_classes
  end
end

puts "Gimme characters!"