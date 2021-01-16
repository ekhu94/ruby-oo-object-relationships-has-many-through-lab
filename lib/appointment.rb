class Appointment
    @@all = []

    def self.all
        @@all
    end

    attr_accessor :date, :patient, :doctor

    def initialize(date, patient, doctor)
        @date, @patient, @doctor = date, patient, doctor
        save
    end

    def save
        @@all << self
    end
end
