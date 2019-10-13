class Appointment 

  attr_reader :date

  @@all = []

  def initialize(date)
    @date = date
    @@all << self
  end

  def self.all
    @@all
  end
  
end