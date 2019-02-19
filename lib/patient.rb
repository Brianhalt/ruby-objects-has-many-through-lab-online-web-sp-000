# require 'pry'
# class Patient
#   attr_accessor :patient
# 
#   @@all = []
# 
#   def initialize(patient)
#     @patient = patient
#     @@all << self
#   end
# 
#   def self.all
#     @@all
#   end
# 
#   def new_appointment(doctor, date)
#     Appointment.new(doctor, self, date)
#     binding.pry
#   end
# 
# end

class Patient
  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
  end

  def appointments
    @appointments
  end

  def doctors
    @appointments.collect do |appointment|
      appointment.doctor
    end
  end
end