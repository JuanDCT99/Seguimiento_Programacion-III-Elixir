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

  @doc """
  Funcion para mostrar un mensaje (diferente a la funcion numero 1) atraves del cmd
  """

  def show_message(message) do
    System.cmd("java", ["-cp", ".", "Mensaje", message])
  end

  @doc """
  Funcion para pedir informacion atraves del cmd
  """

  def input_data(data) do
    System.cmd("java", ["-cp",".","Mensaje","input",data])
    |> elem(0)
    |> String.trim()
  end
end
