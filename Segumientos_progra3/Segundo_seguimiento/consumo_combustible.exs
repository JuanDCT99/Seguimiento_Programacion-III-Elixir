#RESOLUCION DEL PRIMER PUNTO DEL SEGUIMIENTO NUMERO 2
#Calcular el consumo del combustible

moduledoc"""

Solucion propuesta al primer punto del seguimiento numero 2 del area de programacion III

"""
defmodule Consumo_combustible do

  def llamar_metodos do
    nombre = pedir_nombre()
    cedula = pedir_cedula()
    distancia = pedir_distancia()
    consumo = pedir_consumo()
    calcular_rendimiento(nombre, cedula, distancia, consumo)

  end

  docmodule"""

  Funcion que pide el nombre al usuario

  """

  def pedir_nombre()do
    Funcional.input("Cual es su nombre: ", :string)
  end

  docmodule"""

  Funcion que pide la documentacion ID del usuario

  """

  def pedir_cedula()do
    Funcional.input("Ingrese su cedula de ciudadania o su numero de identificación: ", :string)
  end

  docmodule"""

  Funcion que pide al usuario ingresar una distancia recorrida

  """

  def pedir_distancia do
    Funcional.input("Que distancia ha recorrido? (K/h): ",:float)
  end

  docmodule"""

  Funcion que le pide al usuario el consumo consumido

  """

  def pedir_consumo do
    Funcional.input("Que consumo de combustible se ha gastado (Lt): " ,:float)
  end

  docmodule"""

  Funcion que calcula el rendimiento 

  """

  def calcular_rendimiento(nombre,cedula,distancia, consumo) do

    rendimiento = Float.round(distancia / consumo, 2)
    mensaje_final = "Señor@ #{nombre}, identificado con la cedula #{cedula}, su rendimiento total es de #{rendimiento}"
    IO.puts(mensaje_final)
    Funcional.mostrar_mensaje(mensaje_final)
  end

end

Consumo_combustible.llamar_metodos()
