# Dado el array:
a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]

# 1. Utilizando map aumentar el valor de cada elemento del array en 1.
a.map! {|x| x + 1 }
puts a

# 2. Utilizando map convertir todos los valores a float.
a.map! {|x| x.to_f }
puts a

# 3. Utilizando map convertir todos los valores a string.
a.map! {|x| x.to_s }
for i in 0..a.length
  puts a[i].class
end

# 4. Utilizando reject descartar todos los elementos menores a 5 en el array.
a.reject! {|x| x < 5 }
puts a

# 5. Utilizando select descartar todos los elementos mayores a 5 en el array.
a.select! {|x| x < 5 }
puts a

# 6. Utilizando inject obtener la suma de todos los elementos del array.
puts a.inject(0) { |sum, x| sum + x }

# 7. Utilizando group_by agrupar todos los números por paridad (si son pares, es un
# grupos, si son impares es otro grupo).
a.group_by do |x| 
    x.even?
end

# 8. Utilizando group_by agrupar todos los números mayores y menores que 6.
a.group_by do |x| 
    x < 6
end
