# Ejercicio 1
# Utilizando los principios de Herencia y Polimorfismo, refactoriza el siguiente código para eliminar la innecesaria cantidad de sentencias if en los métodos ask e introduce .(3 puntos )
class Person

  attr_accessor :first, :last, :age

  def initialize(first, last, age)

    @first_name = first
    @last_name  = last
    @age        = age

  end

  def birthday

    @age += 1

  end

end

class Student < Person

  def talk

    puts "Aquí es la clase de programación con Ruby?"
    puts "Hola profesor. Mi nombre es #{@first_name} #{@last_name}."
  
  end

end

class Teacher < Person

  def talk

    puts "Bienvenidos a la clase de programación con Ruby!"
    puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."

  end

end

class Parent < Person

  def talk
    
    puts "Aquí es la reunión de apoderados?"
    puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."

  end

end

estudiante1=Student.new("Antonella", "Paredes", 7)
estudiante2=Student.new("Florencia", "Paredes", 1)

profesor1=Teacher.new("Claudia", "Molina", 30)
profesor2=Teacher.new("Enrrique", "Echeverría", 45)

apoderado1=Parent.new("Cristóbal", "Paredes", 32)
apoderado2=Parent.new("Carolina", "Méndez", 28)

puts "IMPRIMIENDO ESTUDIANTES"
estudiante1.talk
estudiante1.birthday
puts
estudiante2.talk
estudiante2.birthday
puts

puts "IMPRIMIENDO PROFESORES"
profesor1.talk
profesor1.birthday
puts
profesor2.talk
profesor2.birthday
puts

puts "IMPRIMIENDO APODERADOS"
apoderado1.talk
apoderado1.birthday
puts
apoderado2.talk
apoderado2.birthday
puts



