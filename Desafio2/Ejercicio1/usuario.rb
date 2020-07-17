require_relative('./cuentabancaria.rb')

class Usuario

  attr_accessor :name_user, :cuentas

  def initialize(name_user, cuentas =[])

    @name_user = name_user
    @cuentas   = cuentas

  end

  def saldo_total

    puts @cuentas.map {|cuentas| cuentas.saldo}.sum

  end

end

cuentas_bancarias = [CuentaBancaria.new("BCI", 76245233, 850000), CuentaBancaria.new("Banco Estado", 16920292, 300000), CuentaBancaria.new("Banco Falabella", 18920292, 250000)]

usuario1 = Usuario.new("Florencia", cuentas_bancarias)

usuario1.saldo_total