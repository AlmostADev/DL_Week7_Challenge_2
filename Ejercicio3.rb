# 1. Crear un menú que permita registrar la información de los alumnos del curso.
puts "Bienvenido al Inventario de Desafio Latam..."

loop do
    puts "Elige una de las siguientes opciones: \n"
    puts "1. Agregar un item \n2. Eliminar un item \n3. Actualizar item \n4. Ver stock total \n5. Item mayor stock \n6. Ask to system ;) \n7. Salir"
    opc = gets.chomp.to_i
    case opc
        # Opción 1: Permite ingresar los datos de una persona:
        # Nombre
        # Edad
        # Comuna
        # Género
        when 1
            puts "Ingresando una persona"
        # Opción 2: Permite editar los datos de la persona.
        when 2
            puts "Editando los datos de una persona"
        # Opción 3: Permite eliminar una persona.
        # Ejercicio 2: Arrays y strings
        # Ejercicio 3: Array de hashes
        when 3
            puts "Eliminando una persona"
        # Opción 4: Muestra la cantidad de personas ingresadas.
        when 4
            puts "Mostrando la cantidad de personas ingresadas"
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
            puts "Shutdown Inventory Program :( ..."
            break
    end
end