# Mayusculas
defmodule Mayusculas do
  @moduledoc """
  Modulo "Mayusculas" la cual usa el operador PIPE
  y convierte la cadena que se le entregue en Mayusculas
  dado el uso del String.upcase()
  """

  @doc"""
  Funcion ejecutar que se encarga de ejecutar lo mencionado anteriormente
  imprime la cadena de texto dado el IO.puts()
  """
  def ejecutar() do
    case System.argv() do
      [mensaje] ->
        mensaje
        |> String.upcase()
        |> IO.puts()
      _ ->
        IO.puts("No message provided.")
    end
  end
end

Mayusculas.ejecutar()
