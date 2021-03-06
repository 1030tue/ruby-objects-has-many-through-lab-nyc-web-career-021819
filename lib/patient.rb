class Patient

    attr_accessor :name
    @@all = []

    def initialize(name)
      @name = name
      @@all << self

    end

    def self.all
      @@all
    end

    def new_appointment(doctor, date)
      Appointment.new(self, doctor, date)
    end

    def appointments
      Appointment.all.select {|date| date.patient = self}
    end

    def doctors
      self.appointments.map {|date| date.doctor}
    end

end
