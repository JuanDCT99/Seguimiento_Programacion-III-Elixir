  @moduledoc """
  Modulo Contador que contiene la logica del programa de elixir que recibira una cadena de texto
  Posteriormente se llamara a util.ex para obtener la longitud de la cadena de texto
  """

defmodule Contador do
  alias Util
  def main() do
    palabra = Util.input_data("Ingrese una palabra: ")
    longitud = Util.word_length(palabra)
    Util.show_message("La palabra tiene #{longitud} letras.")
  end
end

Contador.main()
