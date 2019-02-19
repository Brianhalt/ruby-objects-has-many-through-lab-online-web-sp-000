require 'pry'
class Doctor
  attr_accessor :name, :appointment

  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    Appointment.new(date, self, patient)
  end

  # def appointments
  #   theappointments = []
  #   self.appointments.each do |doctor|
  #     theappointments << appintments.doctor
  # end
  #   return theappointments
  # end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def patients
    thepatients = []
    self.appointments.each do |appointment|
      thepatients << appointment.patient
    end
    return thepatients
  end

end
