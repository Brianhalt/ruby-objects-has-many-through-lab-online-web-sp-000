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
    Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end

  def doctors
    thedoctors = []
    self.appointments.each do |appointmenmt|
      thedoctors << appointment.doctor
    end
    return thedoctors
  end

  # def patients
  #   thepatients = []
  #   self.appointments.each do |appointment|
  #     thepatients << appointment.patient
  #   end
  #   return thepatients
  # end



end
