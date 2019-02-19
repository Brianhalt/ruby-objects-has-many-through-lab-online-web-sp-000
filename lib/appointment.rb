require 'pry'

class Appointment
  attr_accessor :date, :doctor, :patient

  @@all = []
  binding.pry

  def initialize(date)
    @date = date
    @doctor = doctor
    @patient = patient
    @@all << self
  end

  def self.all
    @@all
  end


end
