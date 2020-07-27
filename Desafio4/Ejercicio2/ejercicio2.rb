# Ejercicio 2
# Dado los siguientes módulos:
 
#Incluye los módulos en cada subclase utilizando la instrucción include con el objetivo de definir las habilidades y tipo de alimentación de cada animal (2 puntos)

#Módulos a incluir.
module Habilidades

  module Volador
  
    def volar
      'Estoy volandooooo!'
    end

    def aterrizar
      'Estoy cansado de volar, voy a aterrizar'
    end

  end

  module Nadador

    def nadar
      'Estoy nadando!'
    end

    def sumergir
      'glu glub glub glu'
    end

  end

  module Caminante

    def caminar
      'Puedo caminar!'
    end

  end

end

module Alimentacion

  module Herbivoro

    def comer
      'Puedo comer plantas!'
    end

  end

  module Carnivoro

    def comer
      'Puedo comer carne!'
    end

  end

end

#Clases que deben tener los módulos según corresponda.
#Crear la clase Animal con un atributo nombre. 
class Animal #Clase Padre

  #Agregar un método getter para el atributo nombre (1 punto)
  def name

    @name

  end

  def initialize(name)
    @name
  end

  include Habilidades
  include Alimentacion

end

# Crear la clase Ave.
class Ave < Animal #Clase hija, porque, hereda de Animal.
end

# Crear la clase Mamifero.
class Mamifero < Animal #Clase hijo, porque, hereda de Animal.
end

# Crear la clase Insecto.
class Insecto #Clase Padre.
  include Habilidades
  include Alimentacion
end

# Crear la clase Pingüino. 
class Pinguino < Ave #Clase nieto, porque, hereda de clase Ave que hereda de clase Animal.

  include Habilidades::Caminante
  include Habilidades::Nadador
  include Alimentacion::Herbivoro

end

# Crear la clase Paloma.
class Paloma < Ave #Clase nieto, porque, hereda de clase Ave que hereda de clase Animal.

  include Habilidades::Caminante
  include Habilidades::Volador
  include Alimentacion::Herbivoro

end

# Crear la clase Pato.
class Pato < Ave #Clase nieto, porque, hereda de clase Ave que hereda de clase Animal.
  
  include Habilidades::Volador
  include Habilidades::Caminante
  include Alimentacion::Herbivoro

end

# Crear la clase Perro.
class Perro < Mamifero #Clase nieto, porque, hereda de clase Mamifero que hereda de clase Animal.

  include Habilidades::Caminante
  include Alimentacion::Carnivoro

end

# Crear la clase Gato.
class Gato < Mamifero #Clase nieto, porque, hereda de clase Mamifero que hereda de clase Animal.

  include Habilidades::Caminante
  include Alimentacion::Carnivoro

end

# Crear la clase Vaca.
class Vaca < Mamifero #Clase nieto, porque, hereda de clase Mamifero que hereda de clase Animal.

  include Habilidades::Caminante
  include Alimentacion::Herbivoro

end

#Crear la clase Mosca
class Mosca < Insecto #Clase hija, porque, hereda de clase Insecto.

  include Habilidades::Volador
  include Habilidades::Caminante
  include Alimentacion::Herbivoro

end

#Crear la clase Mariposa
class Mariposa < Insecto #Clase hija, porque, hereda de clase Insecto.

  include Habilidades::Volador
  include Habilidades::Caminante
  include Alimentacion::Herbivoro

end

#Crear la clase Abeja
class Abeja < Insecto #Clase hija, porque, hereda de clase Insecto.

  include Habilidades::Volador
  include Habilidades::Caminante
  include Alimentacion::Herbivoro

end