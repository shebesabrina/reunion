class Reunion
  attr_reader :activity,
              :location

  def initialize(location)
    @activities = []
    @location = location
  end

  def add_activities
    @activies << Activity.new(name)
  end

end
