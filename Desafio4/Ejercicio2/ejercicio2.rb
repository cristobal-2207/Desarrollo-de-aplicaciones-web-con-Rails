Ejercicio 2
Dado los siguientes módulos:
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
endCrear la clase Animal con un atributo nombre . Agregar un método getter para el atributo
nombre (1 punto)
Crear las clases Ave , Mamifero e Insecto . Ambas heredan de Animal (1 punto)
Crear las clases Pingüino , Paloma y Pato . Las tres heredan de Ave (1 punto)
Crear las clases Perro , Gato y Vaca . Las tres heredan de Mamifero (1 punto)
Crear las clases Mosca , Mariposa y Abeja . Las tres heredan de Insecto (1 punto)
Incluye los módulos en cada subclase utilizando la instrucción include con el objetivo de
definir las habilidades y tipo de alimentación de cada animal (2 puntos)