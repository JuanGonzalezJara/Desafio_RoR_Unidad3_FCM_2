#REQUERIMIENTOS
# ====================================================================================
# 1. Se solicita mostrar los números pares mediante un ciclo while para los números
# comprendidos entre el 0 y el 20.

# Se muestra en consola mensaje indicando accion
puts "Se muestran en consola los numero " + "\e[0;32mPares\e[m" + " utilizando un ciclo While"

# Ciclo While que recorre variable num mientras sea menor o igual a 20 suman 1 en cada ciclo
# Cada vez que se cumpla la condicion se agregara el numero a la variable vista la cual se mostrara al finalizar el ciclo
numCiclo1 = 2
vista1 = ""
while numCiclo1 <= 20
    if numCiclo1.even? 
        vista1 = vista1 + "| #{numCiclo1} "
    end
    numCiclo1 += 1
end
puts vista1 + "|"
puts

# ====================================================================================
# 2. Se solicita mostrar los números impares mediante un ciclo while para los números
# comprendidos entre el 0 y el 20.

# Se muestra en consola mensaje indicando accion
puts "Se muestran en consola los numero " + "\e[0;32mImpares\e[m" + " utilizando un ciclo While"

# Ciclo While que recorre variable num mientras sea menor o igual a 20 suman 1 en cada ciclo
# Cada vez que se cumpla la condicion se agregara el numero a la variable vista la cual se mostrara al finalizar el ciclo
numCiclo2 = 0
vista2 = ""
while numCiclo2 <= 20 
    if !numCiclo2.even? 
        vista2 = vista2 + "| #{numCiclo2} "
    end
    numCiclo2 += 1
end
puts vista2 + "|"
puts

# ====================================================================================
# 3. Mostrar la tabla de multiplicar del 0 hasta el 9, para ello puedes utilizar el ciclo for o
# while.

# Se muestra en consola mensaje indicando accion
puts "Se muestran en consola las tablas del " + "\e[0;32m0\e[m" + " al " + "\e[0;32m9\e[m" + " utilizando un ciclo While"

# Definimos las variables que utilizaremos para iterar
numMultiplo = 0
contador = 0
linea = ""
msg = ""
# Ciclo while que iterara por cada numero mostrando su multiplo
while numMultiplo <= 9 
    while contador <= 9 
        linea = "| #{contador} x #{numMultiplo} = #{contador * numMultiplo} "
        # Valida largo de string para efectos de orden visual
        if linea.length <= 12
            linea = linea + " "
            msg += linea
        else
            msg += linea
        end
        linea = ""
        contador += 1
    end
    # Cierra string de msg y resetea su valor y el contador, aumenta al siguiente multiplo
    puts msg + "|"
    msg = ""
    numMultiplo += 1
    contador = 0
end
puts

# ====================================================================================
# 4. Haciendo uso de .times o el ciclo for dibuja un triángulo con el carácter que
# consideres más idóneo, pueden ser asteriscos (*) o numerales (#).

# Se muestra en consola mensaje indicando accion
puts "Se dibuja en consola un " + "\e[0;32mTriangulo\e[m" + " con un caracter (#{caracter = "*"})"
puts

# Definimos las variables que utilizaremos para iterar
totalPisos = 10
espacio = " " * totalPisos
piso = ""

# Iteramos para formar el triangulo
for i in 1..totalPisos do
    piso = (espacio) + (caracter * i)
    if i <= 1
        puts piso
    else
        puts piso + (caracter * (i-=1))
    end
    espacio.chop!
end
