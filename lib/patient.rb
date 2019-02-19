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
    Appointment.new(date, self, doctor)
  end

  # def appointments
  #   theappointments = []
  #   self.appointments.each do |appointment|
  #     theappointments << appointment.doctor
  #   end
  #   return theappointments
  # end

end
