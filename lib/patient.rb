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
  #   Appointment.all.select do |doctor|
  #     appointment.doctor == self
  #   end
  # end
  #
  # def patients
  #   Appointment.all.select do |doctor|
  #     appointment.doctor == self
  #   end
  # end

  # def appointments
  #   theappointments = []
  #   self.appointments.each do |doctor|
  #     thedoctors << appointment.doctor
  #   end
  #   return thedoctors
  # end
  #
  # def patients
  #   thepatients = []
  #   self.appointments.each do |appointment|
  #     thepatients << appointment.patient
  #   end
  #   return thepatients
  # end

end
