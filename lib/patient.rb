class Patient

  attr_reader :name, :appointments

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
  
  def new_appointment(doctor,date)
    Appointment.new(self,date,doctor)
  end
  
end