defmodule Lector do
  def lector() do
    Util.input_data("Digite su Mensaje: ")
    |> Util.show_message()
  end
end

Lector.lector()
