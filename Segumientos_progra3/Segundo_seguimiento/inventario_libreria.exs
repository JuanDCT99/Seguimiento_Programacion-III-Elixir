#RESOLUCION AL SEGUNDO PUNTO DEL SEGUIMIENTO NUMERO 2

#INVENTARIO DE UNA LIBRERIA


defmodule Control_Inventario do

  def llamado_metodos do
    titulo_libro = pedir_titulo()
    cantidad_unidades = obtener_stock(titulo_libro)
    precio_libros = obtener_precio_libros()
    calcular_inventario(titulo_libro, cantidad_unidades, precio_libros)
  end

  def pedir_titulo() do
    Funcional.input("Cual es el titulo del libro: ", :string)
  end

  def obtener_stock(titulo_libro) do
    Funcional.input("Que cantidad de hay en Stock para el libro llamado: #{titulo_libro}" ,:integer)
  end

  def obtener_precio_libros() do
    Funcional.input("Cual es el valor unitario por libro: " ,:integer)
  end

  def calcular_inventario(titulo_libro, cantidad_unidades, precio_libros) do
    valor_total = cantidad_unidades * precio_libros
    IO.puts("El libro titulado #{titulo_libro}, cuenta en este momento con #{cantidad_unidades} unidades, cada una con un valor unico de #{precio_libros}, por ende el valor total es de #{valor_total}")
  end

end

Control_Inventario.llamado_metodos()
