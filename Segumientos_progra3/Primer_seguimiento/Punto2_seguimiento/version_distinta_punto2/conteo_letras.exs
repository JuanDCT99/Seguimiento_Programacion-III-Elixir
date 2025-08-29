# conteo de letras

@moduledoc"""
  Modulo "Letras" el cual contiene la logica de la funcion que contara la cantidad de caracteres en una cadena
  """
defmodule Letras do
  @doc"""
  Funcion ejecutar que recibe la cadena de texto, luego se optiene la longitud de la palabra (String.length())
  posteriormente lo imprime con el IO.puts
  """
  def ejecutar() do
    case System.argv() do
      [mensaje] ->
        mensaje
        |> String.length()
        |> IO.puts()
      _ ->
        IO.puts("No message provided.")
    end
  end
end

Letras.ejecutar()
