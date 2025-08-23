defmodule Util do
  @moduledoc """
  Modulo de funciones de mostrar mensaje y pedir información
  """

  @doc """
  Funcione mostrar mensaje
  """
  def mostrar_mensaje(mensaje) do
    mensaje
    |> IO.puts()
  end
  @doc """
  Funcion de pedir informacion
  """
  def pedir_informacion() do
    IO.gets("Ingresar su nombre: ")
    |> String.trim()
  end

  def show_message(message) do
    System.cmd("java", ["-cp", ".", "Mensaje", message])
  end

  def input_data(data) do
    System.cmd("java", ["-cp",".","Mensaje","input",data])
    |> elem(0)
    |> String.trim()
  end
end
