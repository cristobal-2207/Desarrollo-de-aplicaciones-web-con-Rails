# Ejercicio 2
# Dado el siguiente código UML
# 1. Crear la clase con el nombre CuentaBancaria (1punto)
# Los métodos getter y setter para el atributo nombre_de_usuario (1punto)
# Crear el constructor que reciba el nombre_usuario y numero_de_cuenta y lo asigne a los
# atributos(1punto)
# Levantar una excepción del tipo RangeError si el atributo numero_de_cuenta tiene un número
# de dígitos distinto a 8 (se puede ocupar el método .digits para obtener los dígitos y .count para
# contarlos) (1punto)
# Agregar un tercer parámetro opcional al constructor que permita establecer si una cuenta es VIP
# (1pto), este valor puede ser 1 o 0. Por defecto será 0.
# Crear un método llamado numero_de_cuenta que devuelva con el número de cuenta con un
# prefijo '1-' si es vip y '0-' si no lo es. Ejemplo: si la cuenta es VIP y el número 00112233, el
# método debería devolver '1-00112233' (1punto)

class CuentaBancaria

  attr_accessor :name_user, :number_account, :vip

  def initialize(name_user, number_account, vip=0)

    @name_user      = name_user
    @number_account = number_account
    @vip            = vip

    if number_account.digits.count !=8

      raise RangeError, "La cantidad de digitos es distinta a 8"

    end 

  end

  def number_The_account

    if vip !=0

      puts "1-#{number_account}"

    else

      puts "0-#{number_account}"

    end

  end
  
end

cuenta=CuentaBancaria.new("Antonella Paredes", 12345678, 1)
cuenta.number_The_account
