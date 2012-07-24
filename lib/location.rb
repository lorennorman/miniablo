class Location
  attr_accessor :id, :name

  def initialize options
    @id          = options[:id]          || Util.constantize(options[:name]).to_sym
    @name        = options[:name]        || options[:id].to_s.capitalize
    @description = options[:description] || ""
    @actions     = options[:actions]     || []
  end

  def encounter!
    describe_this_place
    next_action = determine_next_action || NoAction.new
    next_action.execute
  end

  def describe_this_place
    Menu.block_display @description, title: @name
  end

  def determine_next_action
    if @actions
      Menu.select_from(@actions)
    else
      puts "You have no options here."
    end
  end

  def to_s
    id.to_s
  end
end
