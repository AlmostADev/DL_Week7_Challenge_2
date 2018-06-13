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
        when 1 Listo
            puts "Ingresa el nombre del item"
            key = gets.chomp
            puts "Ingresa el valor del item"
            value = gets.chomp.to_i
            inventario.store(key, value)
            puts "Se ha agregado un #{key} con valor #{value} al inventario"
            puts "El inventario se ha actualizado..."
            puts inventario
        # Opción 2: Permite editar los datos de la persona.
        when 2 Listo
            if inventario.length != 0
                puts "Ingresa el nombre del producto"
                key = gets.chomp
                key_delete = inventario.delete(key.to_sym)
                puts "Se ha eliminado #{key} del inventario"
                if inventario.length != 0
                  puts "El inventario se ha actualizado..."
                else
                  puts "El inventario ha quedado vacio"
                end
                puts inventario if inventario.length != 0
            else
                puts "Inventario vacío"
            end
        # Opción 3: Permite eliminar una persona.
        # Ejercicio 2: Arrays y strings
        # Ejercicio 3: Array de hashes
        when 3
            puts "Actualizando un item..."
            puts "1. Actualizar Item \n2. Actualizar Stock \n"
            opc1 = gets.chomp.to_i
            case opc1
                when 1
                    puts "Actualizando Item"
                when 2
                    puts "Actualizando Stock"
            end
        # Opción 4: Muestra la cantidad de personas ingresadas.
        when 4 Listo
            puts "El stock total del inventario es de #{inventario.each_value.sum} unidades"
        # Opción 5: Muestra las comunas de todas las personas.
        # hint: Generar un array con las comunas, eliminar repeticiones. Considerar que
        # pueden haber nombres escritos con mayúscula y minúscula.
        when 5 Listo
            max_stock = inventario.key(inventario.values.max)
            puts "El item de mayor stock es... #{max_stock}"
        # Opción 6: Muestra una lista con todas las personas que tengan entre 20 y 25 años.
        when 6 Listo
            puts "Asking to system :o ..."
            puts "Ingresa el nombre del producto"
            key = gets.chomp
            if inventario[key.to_sym]
                puts "si"
            else
                puts "no"
            end
        # Opción 7: Muestra la suma de las edades de todas las personas.
        when 7 Listo
            puts "Mostrando la suma"
        # Opción 8: Muestra el promedio de las edades del grupo.
        when 8
        # Opción 9: Muestra dos listas de personas, una por cada género.
        when 9
        # El menú debe repetirse hasta que el usuario ingrese la opción 10 (salir).
        when 10
            puts "Shutdown Inventory Program :( ..."
            break
    end
end