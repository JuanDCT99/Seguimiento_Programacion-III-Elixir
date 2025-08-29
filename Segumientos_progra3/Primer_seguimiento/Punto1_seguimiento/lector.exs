
defmodule Lector do
  @moduledoc"""
  Modulo Lector que llama a util.ex que espera una entrada del usuario
  """

  @doc"""
  Funcion input_data llamada de Util.ex,
  Uso el operador PIPE para la entrada de informacion
"""
  def lector() do
    Util.input_data("Digite su Mensaje: ")
    |> Util.show_message()
  end
end

Lector.lector()
