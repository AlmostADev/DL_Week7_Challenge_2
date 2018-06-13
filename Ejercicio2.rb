# Dado el arreglo
nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]

Se pide:

# 1. Extraer todos los elementos que excedan mas de 5 caracteres utilizando el método .select.
nombres.select! {|x| x.length < 5 }
puts nombres

# 2. Utilizando .map crear una arreglo con los nombres en minúscula.
nombres.map do |x| 
    x.downcase! 
end
puts nombres

# 3. Utilizando .select para crear un arreglo con todos los nombres que empiecen con P.
new_array = nombres.select do |x| x.include? "P" end
puts new_array

# 4. Utilizando .map crear un arreglo único con la cantidad de letras que tiene cada nombre.
arr_value = nombres.map do |x| x.length end
puts arr_value

# 5. Utilizando .map y .gsub eliminar las vocales de todos los nombres.
nombres.map! do |x| 
    x.gsub(/[aeiou]/, '')
end