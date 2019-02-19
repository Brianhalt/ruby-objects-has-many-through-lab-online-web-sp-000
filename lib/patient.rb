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

  def new(doctor, date)
    Appointment.new(doctor, self, date)
    binding.pry
  end

  

end
