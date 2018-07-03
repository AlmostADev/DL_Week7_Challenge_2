
def averageAlumnos(data)
    file2 = File.open('promedios.txt', 'w')
        data.each do |item|
            names = item.split(', ')[0]
            marks = item.split(', ')[1..5].each.map(&:to_i)
            avg = 0
            marks.each do |mark|
                avg += mark
            end
            promedio = avg / marks.length.to_f
            file2.puts "#{names} : #{promedio}"
        end
    file2.close
end

def inasistenciasAlumnos(data)
    data.each do |item|
        names = item.split(', ')[0]
        marks = item.split(', ')[1..5].each.map(&:to_i)
        asistencia = marks.count(0)
        puts "#{names} : #{asistencia} asistencia" if asistencia >= 1
    end
end

def approveStudents(data, not_minima)
    data.each do |item|
        names = item.split(', ')[0]
        marks = item.split(', ')[1..5].each.map(&:to_i)
        avg = 0
        marks.each do |mark|
            avg += mark
        end
        promedio = avg / marks.length.to_f
        puts "#{names} aprobado, Felicitaciones! :)" if promedio >= not_minima
    end
end

# 1. Crear un menú que permita registrar la información de los alumnos del curso.
puts "Bienvenido al Inventario de Desafio Latam..."
puts "Reservando espacio en memoria..."

persona = Hash.new()
puts persona

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
        # Opción 1: Permite ingresar los datos de una persona:
        when 1
        # Opción 2: Permite editar los datos de la persona.
        when 2
            puts "Editando los datos de una persona"
        # Opción 3: Permite eliminar una persona.
        when 3
            puts "Eliminando una persona"
        #4 Debe terminar el programa.
        # Opción 4: Muestra la cantidad de personas ingresadas.
        when 4
            puts "Mostrando la cantidad de personas ingresadas"
            puts persona
            # Opción 5: Muestra las comunas de todas las personas.
        # hint: Generar un array con las comunas, eliminar repeticiones. Considerar que
        # pueden haber nombres escritos con mayúscula y minúscula.
        when 5
            puts "Mostrando las comunas de todas las personas"
        # Opción 6: Muestra una lista con todas las personas que tengan entre 20 y 25 años.
        when 6
            puts "Mostrando una lista con todas las personas que tengan entre 20 y 25 años"
        # Opción 7: Muestra la suma de las edades de todas las personas.
        when 7
            puts "Mostrando la suma de las edades"
        # Opción 8: Muestra el promedio de las edades del grupo.
        when 8
            puts "Mostrando el promedio de las edades del grupo"
        # Opción 9: Muestra dos listas de personas, una por cada género.
        when 9
            puts "Mostrando dos listas de personas, una por cada género"
        # El menú debe repetirse hasta que el usuario ingrese la opción 10 (salir).
        when 10
            puts "Saliendo..."
        break
    end
end