class Doctor
    @@all = []

    def self.all
        @@all
    end

    attr_reader :name

    def initialize(name)
        @name = name
        save
    end

    def save
        @@all << self
    end

    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end

    def appointments
        Appointment.all.select { |appt| appt.doctor == self }
    end

    def patients
        appointments.map { |appt| appt.patient }
    end
end
