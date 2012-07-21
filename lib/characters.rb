module Character
  def self.classes
    {
      "Barbarian" => {
        "STR" => 20,
        "DEX" => 15,
        "INT" => 10,
        "HP"  => 200
      },
      "Rogue" => {
        "STR" => 15,
        "DEX" => 20,
        "INT" => 15,
        "HP"  => 150
      },
      "Wizard" => {
        "STR" => 10,
        "DEX" => 10,
        "INT" => 30,
        "HP"  => 100
      }
    }
  end
end 