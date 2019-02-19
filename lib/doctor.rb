require 'pry'
class Doctor
  attr_accessor :doctor, :date

  @@all = []

  def initialize(doctor)
    @doctor = doctor
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end


end
