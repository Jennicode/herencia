# Declaramos la clase Appointment con sus atributos; location, purpose, hour y min como variables de instancia.
class Appointment
    def initialize(location, purpose, hour, min)
        @location = location
        @purpose = purpose
        @hour = hour
        @min = min
    end
end

# Declararemos las clase hija de Appointment que será MonthlyAppointment.
class MonthlyAppointment < Appointment
    attr_reader :day
    def initialize(location, purpose, hour, min, day)
        # Super nos permite llamar a un método de una superclase que se llama exactamente igual. Esto nos permite operar sobre ese método sin tener que sobrescribir el método completo.
        super(location, purpose,hour, min, day)
        @day = day
    end


    def to_s
        #Reunion mensual en NASA sobre Aliens el día 23 a la(s) 8:15
        "Reunión mensual en #{@location} sobre #{@purpose} el día #{@day} a la(s) #{@hour}:#{@min}" 
    end

    def occurs_on?(day)
        @day == day
    end
end

class DailyAppointment < Appointment
    attr_reader :location
    def occurs_on?(h,m)
        h == @hour && m == @min
    end

    def to_s 
        # Reunión diaria en desafio latam sobre educacion a la(s) 8:15
        "Reunión diaria en #{@location} sobre #{@purpose} a la(s) #{@hour}:#{@min}"
    end
end

class OneTimeAppointment < Appointment 
    def initialize(location, purpose, hour, min, day, month, year)
        super(location, purpose, hour, min)
        @day = day
        @month = month
        @year = year
    end

    def accurs_on?(day, month, year)
        @day == day && @month == month && @year == year
    end

    def to_s
        # Reunión única en Desafío Latam sobre trabajo el 4/6/2019 a la(s) 14:30
        "Reunión única en Desafío Latam sobre #{@purpose} el #{@day}/#{@month}/#{@year} a la(s) #{@hour}:#{min}"
    end

    def location
        @location
    end
end

class Appointment
    def initialize(location,purpose,hour,min)
        @location = location
        @purpose = purpose
        @hour = hour
        @min = min
    end
end

class MonthlyAppointment < Appointment
    attr_reader :day
    def initialize(location,purpose,hour,min,day)
        super(location,purpose,hour,min)
        @day = day
    end

    def to_s
        # Reunión mensual en NASA sobre Aliens el día 23 a la(s) 8:15.
        "Reunión mensual en #{@location} Sobre #{@purpose} el día #{@day} a la(s) #{@hour}:#{@min}"
    end

    def occurs_on?(day)
        @day == day    
    end
end

class DailyAppointment < Appointment
    attr_reader :location
    def occurs_on?(h,m)
        h == @hour && m == @min
    end
    def to_s
        # Reunión diaria en Desafío Latam sobre Educación a la(s) 8:15
        "Reunión diaria en #{@location} sobre #{@purpose} a la(s) #{@hour}:#{@min}"
    end
end

class OneTimeAppointment < Appointment
    def initialize(location, purpose, hour,min, day, month, year)
        super(location, purpose, hour,min)
        @day = day
        @month = month
        @year = year
    end
    
    def accurs_on?(day, month, year)
        @day == day && @month == month && @year == year
    end
    
    def to_s
        # Reunión única en Desafío Latam sobre Trabajo el 4/6/2019 a la(s) 14:30.
        "Reunión única en #{@location} sobre #{@purpose} el #{@day}/#{@month}/#{@year} a la(s) #{@hour}:#{@min}"
    end

    def location
        @location
    end
    
end


# Probando en la consola;   location,       purpose, hour, min, day, month, year
oa = OneTimeAppointment.new('Desafío Latam', 'Trabajo', 14, 30, 4, 6, 2019)
puts oa

# ma = MonthlyAppointment.new('NASA', 'Aliens', 8, 15, 23)
# puts ma
# puts ma.occurs_on?(23)
# puts ma.occurs_on?(17)

# da = DailyAppointment.new('Desafío Latam', 'Educación', 8, 15)
# puts da
# puts da.occurs_on?(8,15)
# puts da.occurs_on?(8,17)
# puts da.location


