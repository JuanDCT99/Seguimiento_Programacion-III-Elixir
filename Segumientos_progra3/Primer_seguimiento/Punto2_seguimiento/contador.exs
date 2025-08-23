defmodule Contador do
  alias Util
  def main() do
    palabra = Util.input_data("Ingrese una palabra: ")
    longitud = Util.word_length(palabra)
    Util.show_message("La palabra tiene #{longitud} letras.")
  end
end

Contador.main()
