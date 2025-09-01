#RESOLUCION DEL PUNTO 4 DEL SEGUIMIENTO NUMERO 2

defmodule Salario do


  def llamar_metodos do
    name = preguntar_nombre()
    money = preguntar_salario(name)
    time = preguntar_horas_servicio_extra()
    calcular_salario_asignado(name, money, time)
  end



  def preguntar_nombre do
    Funcional.input("Ingrese su nombre: " ,:string)
  end


  def preguntar_salario(name) do
    Funcional.input("Señor@ #{name}, Cual es su salario base mensual (teniendo en cuenta el subsicidio de transporte, prestaciones y servicios ofrecidos a usted): " ,:float)
  end


  def preguntar_horas_servicio_extra do
    Funcional.input("Teniendo en cuenta la informacion proporcionada anteriormente; Cual es la cantidad de horas extras en las cuales usted ha prestado servicio: " ,:integer)
  end



  def calcular_salario_asignado(name, money, time) do
    valor_hora_normal = money / 240
    #se usa 240 al suponer que normalmente se trabajan 8 horas diarias a 30 dias, ==> 30 * 8 = 240
    valor_hora_extra = valor_hora_normal * 1.5
    pago_horas_extra = valor_hora_extra * time

    salario_final = money + pago_horas_extra

    mensaje_final = "Señor@ #{name}, dado que su salario base fue de #{money} y las horas de servicio ejercidas por usted fueron de #{time}, su salario completo es de #{salario_final}"
    IO.puts(mensaje_final)
    Funcional.mostrar_mensaje(mensaje_final)
  end

end

Salario.llamar_metodos()
