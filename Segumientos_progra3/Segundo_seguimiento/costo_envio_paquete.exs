#SOLUCION DEL PUNTO 6 DEL SEGUNDO SEGUIMIENTO

defmodule Empaquetadora do

  def realizar_tareas do
    nombre = solicitar_nombre_usuario()
    peso = ingresar_peso_paquete()
    tipo_envio = solicitar_tipo_envio()

    costo = calcular_costo_total_envio(peso, tipo_envio)

    resultado_esperado = {nombre, peso, tipo_envio, costo}

    IO.puts("RESUMEN DE SU ENVIO...")
    IO.puts("Cliente identificado con el nombre de: #{nombre}")
    IO.puts("El total de su envio fue de: $#{costo}")
    IO.puts("--------------------------------------------")

    IO.inspect(resultado_esperado, label: "Tupla de resultado final")


    mensaje_final = "--- Resumen del Envío ---
    Cliente: #{nombre}
    Costo Total: $#{costo}"
    Funcional.mostrar_mensaje(mensaje_final)
  end




  def solicitar_nombre_usuario do
    Funcional.input("Apreciado Cliente, ingrese su nombre: " ,:string)
  end

  def ingresar_peso_paquete do
    Funcional.input("Cual es el peso del paquete (kg): " ,:float)
  end

  def solicitar_tipo_envio() do
    Funcional.input("Cual es el tipo de envio? [Economico, Express, Internacional]: " ,:string)
  end

  def calcular_costo_total_envio(peso, tipo) do
    tipo_normalizado = String.downcase(tipo)
    case tipo_normalizado do
      "economico" ->
        peso * 5000
      "express" ->
        peso * 8000
      "internacional" ->
        calcular_costo_internacional(peso)
      _->
        "ERROR: EL TIPO DE ENVIO NO ES VALIDO"
    end
  end

  defp calcular_costo_internacional(peso) do
    if peso <= 5 do
      peso * 15000
    else
      peso * 12000
    end
  end
end

Empaquetadora.realizar_tareas()
