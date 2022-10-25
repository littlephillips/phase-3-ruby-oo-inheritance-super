require_relative '../parent/run.rb'

class Student < User
  attr_accessor :grade

  def initialize(name, grade)
    puts "Student#intialize called"
    super(name)           #used to call a method on the superclass with the same name as the subclass
    @grade = grade
  end

  def log_in
    super          #will call the log_in method as defined in the super class.log_in
    @in_class = true
  end
end

oneil = Student.new("little", "40%")
puts oneil.log_in
puts oneil.name 
puts oneil.grade
