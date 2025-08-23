# Mayusculas
defmodule Mayusculas do
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
