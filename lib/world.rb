class World
  def self.start! scenario_id
    scenario = Scenarios.load(scenario_id)
    world = World.new scenario
    world.start! 
  end

  def initialize scenario_data
    @locations = scenario_data.map do |location_data|
      Location.new location_data
    end    
    @start_location = find_location(:town)
  end

  def find_location(id)
    @locations.find {|loc| loc.id == id }
  end

  def start!
    last_location = current_location = @start_location

    Logger.info "(...->#{current_location})"
    while current_location = find_location(current_location.encounter!)
      Logger.info "(#{last_location}->#{current_location})"
      last_location = current_location
    end
    Logger.info "(#{last_location}->...)"
  end
end
