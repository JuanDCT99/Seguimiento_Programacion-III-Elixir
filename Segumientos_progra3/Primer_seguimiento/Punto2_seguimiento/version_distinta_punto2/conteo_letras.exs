# conteo de letras
defmodule Letras do
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
