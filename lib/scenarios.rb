module Scenarios
  def self.load id
    {
      simple: [
        { id: :town,
          description: "Welcome to Ministram, we hope you have a divine stay.",
          actions: [ TravelAction.new(:shop),
                     TravelAction.new(:field) ]
        },
        { id: :shop,
          description: "A shopkeeper greets you, \"You look like you could use some gear, and you've come to the right place.\" You don't trust him, but you're willing to see what he's got so you cautiously approach the display cases.",
          actions: [ TravelAction.new(:town) ]
        },
        { id: :field,
          description: "It's dangerous in the wilderness, nowadays. You remain alert, ready for a possible monster sighting at any moment. A Dungeon lies afoot a dark forest in the distance.",
          actions: [ TravelAction.new(:town),
                     TravelAction.new(:dungeon) ]
        },
        { id: :dungeon,
          description: "It's a dank tunnel leading under the dark forest nearby. You step cautiously into the darkness, already you can tell this filthy hole is teeming with life, all of it evil.",
          actions: [ TravelAction.new(:field) ]
        }
      ]
    }[id]
  end
end