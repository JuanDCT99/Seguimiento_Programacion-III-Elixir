defmodule Mensaje_1_privado do
  defp mostrar_mensaje_privado(mensaje) do
    mensaje
    |> IO.puts()
  end



    def invocar_mensaje_privado() do
      "Bienvenidos a la Empresa Once Ltda"
      |> mostrar_mensaje_privado()
    end

  end

  Mensaje_1_privado.invocar_mensaje_privado()
