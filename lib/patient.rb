class Patient

  attr_accessor :appointments
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
  
  def new_appointment(doctor,date)
    Appointment.new(date, self,doctor)
  end
  
end