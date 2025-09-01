#RESOLUCION DEL QUINTO PUNTO DEL SEGUNDO SEGUIMIENTO

defmodule Peaje do
  def tareas_registro_peaje do

    placa = ingresar_placa_vehiculo()
    tipo = ingresar_tipo_vehiculo()

    calcular_tarifa_final(placa, tipo)

  end

  def ingresar_placa_vehiculo do
    Funcional.input("Ingrese la placa de su vehiculo: " ,:string)
  end

  def ingresar_tipo_vehiculo do
    Funcional.input("Cual es su tipo de vehiculo [Carro, Moto, Camion]: " ,:string)
  end

  def ingresar_peso_vehiculo do
    Funcional.input("Ingrese el peso del vehiculo: " ,:float)
  end

  def calcular_tarifa_final(placa, tipo) do
    tipo_normalizado = String.downcase(tipo)
    case tipo_normalizado do
      "carro" ->
        tarifa = 10000
        resultado = {placa, tipo, tarifa}
        mensaje_final = "Vehículo #{placa} (#{tipo}) debe pagar $#{tarifa}"
        IO.inspect(resultado, label: "Vehículo registrado")
        Funcional.mostrar_mensaje(mensaje_final)

      "moto" ->
        tarifa = 5000
        resultado = {placa, tipo, tarifa}
        mensaje_final = "Vehículo #{placa} (#{tipo}) debe pagar $#{tarifa}"
        IO.inspect(resultado, label: "Vehículo registrado")
        Funcional.mostrar_mensaje(mensaje_final)


      "camion" ->
        peso = ingresar_peso_vehiculo()
        tarifa = 20000 + (2000 * peso)
        resultado = {placa, tipo, tarifa}
        mensaje_final = "Vehículo #{placa} (#{tipo}) debe pagar $#{tarifa}"
        IO.inspect(resultado, label: "Vehículo registrado")
        Funcional.mostrar_mensaje(mensaje_final)

      _->
        IO.puts("Tipo de vehículo '#{tipo}' no es válido.")
      end
    end
  end



Peaje.tareas_registro_peaje()
