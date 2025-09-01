#RESOLUCION DEL EJERCICIO 3 DEL SEGUNDO SEGUMIENTO


moduledoc """

Resolucion del punto 3 del segundo seguimiento de programacion III

"""
defmodule Conversion do
  def llamado_acciones do
    usuario = pedir_username()
    temperatura = pedir_temperatura()
    realizar_conversion_unidades_temperatura(usuario, temperatura)
  end

  docmodule"""

  Funcion que le pide al usuario un nombre

  """

  def pedir_username do
    Funcional.input("Cual es su nombre: " ,:string)
  end

  docmodule"""

  Funcion que le pide al usuario ingresar una temperatura

  """

  def pedir_temperatura do
    Funcional.input("Ingrese la temperatuta actal en Celcius, se procedera con la conversion en Fahrenheit y Kelvin: " ,:float)
  end

  docmodule"""

  Funcion que realiza la conversion de las unidades en celcius a Fahreinheit y Kelvin

  """

  def realizar_conversion_unidades_temperatura(usuario, temperatura) do
    IO.puts("Realizacion de conversiones")
    "Fahrenheit"

    fahrenheit = (temperatura * 9/5) + 32
    kelvin = temperatura + 273.15

    mensaje_final = "Usuario #{usuario}, la temperatura en grados Fahrenheit es #{fahrenheit}°F y en Kelvin es #{kelvin}K"
    IO.puts(mensaje_final)
    Funcional.mostrar_mensaje(mensaje_final)
  end

end

Conversion.llamado_acciones()
