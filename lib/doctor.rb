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
  
  def new_appointment(patient,date)
    Appointment.new(date,patient,self)
  end
  
  def patients
    appointments.map do |x| x.patient
    end
  end
  
end