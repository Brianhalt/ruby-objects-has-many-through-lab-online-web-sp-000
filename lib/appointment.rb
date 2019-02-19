require 'pry'

class Appointment
  attr_accessor :patient, :doctor, :date

  @@all = []

  def initialize(doctor, patient, date)
    @date = date
    @doctor = doctor
    @patient = patient
    @@all << self
  end

  def self.all
    @@all
  end

end
