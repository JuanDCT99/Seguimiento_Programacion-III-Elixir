defmodule Lector do
  def lector() do
    Util.input_data("Pon tu nombre: ")
    |> Util.show_message()
  end
end

Lector.lector()
