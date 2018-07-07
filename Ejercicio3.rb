
def add_std(arr)
  puts 'Ingresa el nombre del estudiante'
  name = gets.chomp
  puts 'Ingresa edad del estudiante'
  age = gets.chomp.to_i
  puts 'Ingresa comuna del estudiante'
  county = gets.chomp
  puts 'Ingresa género del estudiante'
  gender = gets.chomp
  arr.push(nombre: name, edad: age, comuna: county, genero: gender)
  puts "Se ha registrado correctamente!"
  print arr, "\n"
end

def delete_std(arr)
  puts 'Ingrese el nombre del estudiante'
  name = gets.chomp
  arr.delete_if do |person| 
    person[:nombre] == name
  end
  puts "#{name} ha sido eliminada del libro de clases."
  print arr, "\n"
end

def counter_std(arr)
  count = 0
  arr.each do |students|
    if students.include?(:nombre)
      count += 1
    end
  end
  puts "El numero de estudiantes es #{count}"
end

def county_std(arr)
  arr.select do |student| 
    puts student[:comuna]
  end
end

def age_between_std(arr)
  arr.select do |student|
    puts student[:nombre] if student[:edad] >= 20 && student[:edad] <= 25
  end
end

def ages_sum(arr)
  arr.select do |student|
    puts "El estudiante #{student[:nombre]} tiene #{student[:edad]} años."
  end
end

def avg_ages_std(arr)
    sum = arr.inject(0) do |sum, e| 
        sum + e[:edad]
    end
    i = 0
    arr.each { i += 1 }
    print "El promedio de edad entre los estudiantes es #{sum}.", "\n"
end

def gndr_list_std(arr)
    arr.select do |student|
        if student[:genero] == 'Masculino'
        puts "Los estudiantes masculinos son: #{student[:nombre]}"
        else
        puts "Las estudiantes femeninos son: #{student[:nombre]}"
        end
    end
end

students = [{ nombre: 'Alejandro', edad: 30, comuna: 'Lampa', genero: 'Masculino' }]

# 1. Crear un menú que permita registrar la información de los alumnos del curso.
puts "Bienvenido al Inventario de Desafio Latam..."
puts "Reservando espacio en memoria..."

loop do
  puts "Elige una de las siguientes opciones: \n"
  puts    "
    1. Agregar una persona \n
    2. Actualizar persona \n
    3. Eliminar persona \n
    4. Ver cantidad de personas ingresadas \n
    5. Mostrar comunas \n
    6. Lista de personas entre 20 y 25 años \n
    7. Suma de las edades de personas \n
    8. Mostrar promedios edades \n
    9. Mostrar lista de personas por genero \n
    10. Salir"
  opc = gets.chomp.to_i
  case opc
    when 1
    # Opción 1: Permite ingresar los datos de una persona:
        add_std(students)
    when 2
    # Opción 2: Permite editar los datos de la persona.
      
    when 3
    # Opción 3: Permite eliminar una persona.
        delete_std(students)
    when 4
     # Opción 4: Muestra la cantidad de personas ingresadas.
        counter_std(students)
    when 5
    # Opción 5: Muestra las comunas de todas las personas.
    # hint: Generar un array con las comunas, eliminar repeticiones. Considerar que
    # pueden haber nombres escritos con mayúscula y minúscula.
        county_std(students)
    when 6
    # Opción 6: Muestra una lista con todas las personas que tengan entre 20 y 25 años.
        age_between_std(students)
    when 7
    # Opción 7: Muestra la suma de las edades de todas las personas.
        ages_sum(students)
    when 8
    # Opción 8: Muestra el promedio de las edades del grupo.
        avg_ages_std(students)
    when 9
    # Opción 9: Muestra dos listas de personas, una por cada género.
        gndr_list_std(students)
    when 10
    # El menú debe repetirse hasta que el usuario ingrese la opción 10 (salir).
      puts "Saliendo..."
    break
  end
end