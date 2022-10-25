require_relative '../parent/user.rb'

class Teacher < User
  attr_accessor :class_room, :stand_up

  def initialize(name, class_room, stand_up)
    super(name)
    @class_room = class_room
    @stand_up = stand_up
  end

  def log_in
    super
    @in_office = true
  end
end

obi = Teacher.new("Obi", 63...56, 60)
puts obi.log_in
puts obi.name
puts obi.class_room
puts obi.stand_up
  
