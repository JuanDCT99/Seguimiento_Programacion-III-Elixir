defmodule Secuencial do
  #-> UpperCammelCase
  def mostrar_mensaje() do
    "Hola a todos de prueba"
    |> IO.puts()
  end

  def mostrar_mensaje_una_linea(), do: IO.puts("Hola a todos")


  defp mostrar_mensaje_privado(mensaje) do
    mensaje
    |> IO.puts()
  end

  def invocar_privado() do
    "Mensaje privado desde una función"
    |> mostrar_mensaje_privado()
  end


end

Secuencial.invocar_privado()
Secuencial.mostrar_mensaje_una_linea()
Secuencial.mostrar_mensaje()

#(condicion)? true : False //Ternario//
