class TravelAction
  def initialize location_id, options={}
    @location_id = location_id
  end

  def execute
    @location_id
  end

  def to_s
    "Travel to #{@location_id}"
  end
end
