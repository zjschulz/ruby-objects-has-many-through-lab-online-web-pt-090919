class Doctor 

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
  
  def appointments
    Appointment.all.select do |x|
      x.artist == self
    end
  end
  
end