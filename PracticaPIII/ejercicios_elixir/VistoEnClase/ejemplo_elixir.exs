#Caso1
IO.puts(String.ends_with?(String.upcase("Hola Mundo"), "UNDO"))

#Caso 2
"Hola Mundo"
|> String.upcase()
|> String.ends_with?("UNDO")
|> IO.puts()
