require 'pry'
class Doctor
  attr_accessor :name, :appointment

  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    Appointment.new(date, self, patient)
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
  end


  def appointments
    theappointments = []
    self.appointments.each do |doctor|
      theappointments << appintments.doctor
  end
    return theappointments
  end
end
