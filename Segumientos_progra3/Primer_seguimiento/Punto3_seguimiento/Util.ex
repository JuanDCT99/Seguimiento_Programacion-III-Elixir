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
    Obtiene los datos de un empleado.
  """
  def get_employee_data() do
    nombre = input_data("Ingrese el nombre del empleado:")
    horas = input_data("Ingrese las horas trabajadas:") |> String.to_integer()
    valor_hora = input_data("Ingrese la tarifa por hora:") |> ensure_float()

    salario_base = min(horas, 160) * valor_hora
    horas_extra = max(horas - 160, 0)
    salario_extra = horas_extra * valor_hora * 1.25
    salario_neto = salario_base + salario_extra

    show_message("El salario neto de #{nombre} es: $#{:erlang.float_to_binary(salario_neto, decimals: 2)}")
  end

  @doc """
    Asegura que una cadena represente un número float.
  """
  defp ensure_float(str) do
  str = if String.contains?(str, "."), do: str, else: str <> ".0"
  String.to_float(str)
end
end
