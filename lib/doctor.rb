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
      x.doctor == self
    end
  end
  
  def new_appointment(date,patient)
    Appointment.new(date,patient,self)
  end
  
  def patients
    appointments.map do |x| x.date
    end
  end
  
end