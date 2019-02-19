require 'pry'
class Patient
  attr_accessor :patient

  @@all = []

  def initialize(patient)
    @patient = patient
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, doctor)
    Appointment.new(date, doctor, self)
  end

  def appointments
    theappointments = []
    self.appointments.each do |date|
      theappointments << appointment.date
    end
    return theappointments
  end

  def doctors
    thedoctors = []
    self.appointments.each do |doctor|
      thedoctors << appointment.doctors
    end
    return thedoctors
  end

end
