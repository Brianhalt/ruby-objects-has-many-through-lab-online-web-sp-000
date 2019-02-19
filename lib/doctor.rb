require 'pry'
class Doctor
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end

  def appointments
    theappointments = []
    self.appointments.each do |doctor|
      theappointments << appintments.doctor
  end
    return theappointments
  end
end
