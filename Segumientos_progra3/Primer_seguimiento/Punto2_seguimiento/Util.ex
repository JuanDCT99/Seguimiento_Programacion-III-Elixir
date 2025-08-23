defmodule Util do
  @moduledoc """
  Utility module for displaying messages using java.
  """

  @doc """
    Despliega un mensaje usando un programa Java.
  """
  def show_message(message) do
    System.cmd("java", ["-cp", ".", "Mensaje", message])
  end

  @doc """
    Propone un input usando un programa Java y devuelve la respuesta.
  """
  def input_data(data) do
    System.cmd("java", ["-cp", ".", "Mensaje", "input", data])
    |> elem(0)
    |> String.trim()
  end

  @doc """
    Calcula la longitud de una palabra.
  """
  def word_length(word) do
    String.length(word)
  end
end
