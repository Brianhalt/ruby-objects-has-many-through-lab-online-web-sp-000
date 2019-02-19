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

  def new_appointment(doctor, date)
    Appointment.new(doctor, self, date)
  end

  def appointments
    theappointments = []
    self.appointments.each do |appointment|
      theappointments << appointment.doctor
    end
    return theappointments
  end

end
