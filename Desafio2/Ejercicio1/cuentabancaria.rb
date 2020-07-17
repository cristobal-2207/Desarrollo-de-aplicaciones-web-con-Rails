# 1. Crear las clases Usuario y CuentaBancaria (1punto)

# 2. Crear el constructor de la clase CuentaBancaria que reciba el nombre del banco, el número de cuenta y el saldo (el saldo por defecto será cero). (1punto)

# 3. Crear el método transferir en la clase Cuenta que reciba un monto y otra cuenta. Este método restará del saldo actual el monto y aumentará el saldo de la otra cuenta en el mismo monto (1punto)

# Tip: es necesario que exista el attr_writer o attr_accessor del saldo para acceder al saldo de la otra cuenta

# 4. Probar creando dos cuentas cada una con un saldo de 5000 y transferir el total de una cuenta a la otra.

#5. Crear el constructor de Usuario que reciba el nombre del usuario y un arreglo con al menos 1 cuenta bancaria. (1punto)

# 6. Crear el método saldo total que devuelva la suma de todos los saldos del usuario. (1punto)


class CuentaBancaria

  attr_accessor :name_bank, :number_cuenta,:saldo

  def initialize(name_bank, number_cuenta, saldo = 0)

    @nameBank     = name_bank
    @numberCuenta = number_cuenta
    @saldo        = saldo

  end

  def transferir(monto, cuenta_receptora)

    @saldo                 = saldo - monto
    cuenta_receptora.saldo = cuenta_receptora.saldo + monto

    #puts "#{cuenta_receptora.saldo}"

  end

end

cuenta1 = CuentaBancaria.new("BCI", 76245233, 850000)
cuenta2 = CuentaBancaria.new("Banco Estado", 16920292, 300000)

cuenta1.transferir(5000, cuenta2)