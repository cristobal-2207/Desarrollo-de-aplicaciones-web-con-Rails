class Card
    
  attr_accessor :number, :pint
  
  def initialize(number, pint)
    @number = number
    @pint   = pint

    if number <1 || number > 13

      raise RangeError, "Ingrese un valor del 1 al 13 "

    end 
    
    if pint !="C" && pint !="D" && pint !="E" && pint !="T"

      raise RangeError, "Las pintas son C, D, E, T"
       
    end 

  end

  def to_s

    puts "number:#{number} | pint:#{pint}"

  end 

end
