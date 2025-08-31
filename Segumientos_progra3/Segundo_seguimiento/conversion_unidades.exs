#RESOLUCION DEL EJERCICIO 3 DEL SEGUNDO SEGUMIENTO

defmodule Conversion do
  def llamado_acciones do
    usuario = pedir_username()
    temperatura = pedir_temperatura()
    realizar_conversion_unidades_temperatura(usuario, temperatura)
  end

  def pedir_username do
    Funcional.input("Cual es su nombre: " ,:string)
  end

  def pedir_temperatura do
    Funcional.input("Ingrese la temperatuta actal en Celcius, se procedera con la conversion en Fahrenheit y Kelvin: " ,:float)
  end

  def realizar_conversion_unidades_temperatura(usuario, temperatura) do
    IO.puts("Realizacion de conversiones")
    "Fahrenheit"

    fahrenheit = (temperatura * 9/5) + 32
    kelvin = temperatura + 273.15

    IO.puts("Usuario designado con el nombre #{usuario}, la temperatura ingresada fue de #{temperatura}, los calculos realizados indican que la temperatura en grados Fahrenheit fue de #{fahrenheit}, mientras que los Kelvin fueron de #{kelvin} ")

  end

end

Conversion.llamado_acciones()
