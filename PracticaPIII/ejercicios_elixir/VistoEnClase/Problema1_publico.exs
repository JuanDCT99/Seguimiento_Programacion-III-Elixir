defmodule Mensaje_1_publico  do
  def mostrar_mensaje_bienvenida() do
    "Bienvenidos a la Empresa Once Ltda"
    |> IO.puts()
  end

end

defmodule Test do

  def run_test do
    Util.mostrar_mensaje("Bienvenido a la Empresa Once Ltda")
  end

end

Mensaje_1_publico.mostrar_mensaje_bienvenida()
Test.run_test()
