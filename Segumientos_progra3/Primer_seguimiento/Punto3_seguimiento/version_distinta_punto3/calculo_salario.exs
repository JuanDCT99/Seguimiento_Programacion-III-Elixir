# calculo_salario.exs
defmodule Calculo do
  def ejecutar() do
    case System.argv() do
      [nombre, horasString, valor_horaString] ->
        horas = String.to_float(horasString)
        valor_hora = String.to_float(valor_horaString)


        salario_base = horas * valor_hora

        # En caso de que se trabajen más de 160 horas, calcular horas extras
        horas_extras =
          if horas > 160 do
            (horas - 160) * valor_hora * 0.25
          else
            0
          end

        salario_neto = salario_base + horas_extras

        IO.puts("Señor(a) empleado: #{nombre}, su salario es: #{salario_neto}")

      _ ->
        IO.puts("Se ha detectado un error con los datos proporcionados")
    end
  end
end

Calculo.ejecutar()
