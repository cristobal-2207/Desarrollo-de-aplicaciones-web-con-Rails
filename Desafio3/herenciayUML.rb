class Appointment

  attr_accessor :location, :purpose, :hour, :min

  def initialize(location, purpose, hour, min)

    @location = location
    @purpose  = purpose
    @hour     = hour
    @min      = min

  end

end

class MonthlyAppointment < Appointment

  attr_accessor :day

  def initialize(location, purpose, hour, min, day)

    super(location, purpose, hour, min)
    @day = day

  end

  def occurs_on?(day)

    day == @day

  end

  def to_s

    "Reunión mensual en #{location} sobre #{purpose} el día #{day} a la(s) #{hour}:#{min}."

  end

end

class DailyAppointment < Appointment

  def occurs_on?(hour, min)

    hour == @hour && min == @min

  end

  def to_s

   "Reunión diaria en #{location} sobre #{purpose} a la(s) #{hour}:#{min}." 

  end

end

class OneTimeAppointment < Appointment

  attr_accessor :day, :month, :year

  def initialize(location, purpose, hour, min, day, month, year)

    super(location, purpose, hour, min)
    @day    = day
    @month  = month
    @year   = year

  end

  def occurs_on?(day, month)

    day == @day && month == @month

  end

  def to_s

    "Reunión única en #{location} sobre #{purpose} el #{day}/#{month}/#{year} a la(s) #{hour}:#{min}."

  end

end

puts "DATOS REUNIÓN MENSUAL"
reu_mensual=MonthlyAppointment.new('NASA', 'Aliens', 8, 15, 23)
puts reu_mensual
puts reu_mensual.occurs_on?(23)
puts #Este puts es para hackear a la matrix... en memoria de Diego.

puts "DATOS REUNIÓN DIARIA"
reu_diaria=DailyAppointment.new('Metro S.A.', 'Operación Comercial en L1', 10, 30)
puts reu_diaria
puts reu_diaria.occurs_on?(10,30)
puts #Este puts es para hackear a la matrix... en memoria de Diego.

puts "DATOS REUNIÓN ÚNICA"
reu_unica=OneTimeAppointment.new('Match Moms', 'Flujo del Matchs', 14, 30, 20, 7, 2020)
puts reu_unica
puts reu_unica.occurs_on?(4,6)
puts #Este puts es para hackear a la matrix... en memoria de Diego.

