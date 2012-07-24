require 'ostruct'

class CharacterClass < OpenStruct

  def str
    attributes['STR']
  end

  def dex
    attributes['DEX']
  end

  def int
    attributes['INT']
  end

  def hp
    attributes['HP']
  end

  def to_s
<<-TO_S
#{name}
  STR:  #{str}
  DEX:  #{dex}
  INT:  #{int}
   HP: #{hp}
TO_S
  end
end

module Character
  def self.classes
    [
      {
        "name" => "Barbarian",
        "attributes" => {
          "STR"  => 20,
          "DEX"  => 15,
          "INT"  => 10,
          "HP"   => 200
        }
      },
      {
        "name" => "Rogue",
        "attributes" => {
          "STR"  => 15,
          "DEX"  => 20,
          "INT"  => 15,
          "HP"   => 150
        }
      },
      {
        "name" => "Wizard",
        "attributes" => {
          "STR"  => 10,
          "DEX"  => 10,
          "INT"  => 30,
          "HP"   => 100
        }
      }
    ].map { |class_stuff| CharacterClass.new(class_stuff) }
  end
end
