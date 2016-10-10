# Escribe un método llamado linear_search que tome como argumento un número y un arreglo. Este método debe regresar el índice del primer elemento que sea igual al valor del número, revisando dentro del arreglo cada valor secuencialmente. En caso de no encontrar el número debe regresar nil.
# No podrás utilizar métodos de Array ni sus enumerables (each, map, etc ), si no que debes de utilizar iteradores como for while o until. El único método que puedes utilizar es: Array#[]

random_numbers = [ 4, 3, 2, 20, 5, 64, 78, 11, 43 ]

def linear_search(num, array)
  count = 0
    for i in array
      if i == num
        p array.index(i)
      else 
        count += 1
      end
      p nil if count == array.length
    end
end

linear_search(20, random_numbers)
# => 3
linear_search(29, random_numbers)
# => nil
linear_search(78, random_numbers)

# Después deberás crear un método que regrese un array con los indices donde encuentre el 
# objeto y un array vació si no existe, llama este método global_linear_search.

arr = "entretenerse".split('')

def global_linear_search(lttr, array)
  found = []
  for i in 0..array.length-1
    found << i if array[i] == lttr 
  end
   found
end

p global_linear_search("e", arr)
# => [0, 4, 6, 8, 11]