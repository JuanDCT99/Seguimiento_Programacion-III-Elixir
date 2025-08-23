import javax.swing.JOptionPane;

public class Mensaje3{
    
    public static void main(String[] args) {
        try {
            //Pedir Nombre al usuario
            String nombre = JOptionPane.showInputDialog(null, "Ingrese su nombre de empleado: ");
            if (nombre == null || nombre.trim().isEmpty()) {
                JOptionPane.showMessageDialog(null, "No se ha proporcionado ningun nombre");
                return;
            }

            //Pedir Horas trabajadas por el empleado
            String horasString = JOptionPane.showInputDialog(null, "Ingrese las horas que ha trabajado: ");
            if (horasString == null || horasString.trim().isEmpty()) {
                JOptionPane.showMessageDialog(null, "No se proporciono ningun horario de trabajo");
                return;
            }

        


            //Pedir Salario por hora trabajada
            String valor_horaString = JOptionPane.showInputDialog(null, "Ingrese el valor de cada hora que se ha trabajado individualmente: ");
            if (valor_horaString == null || valor_horaString.trim().isEmpty()) {
                JOptionPane.showMessageDialog(null, "No se proporciono ningun valor a las horas trabajadas");
                return;
            }




            ProcessBuilder pb = new ProcessBuilder(
                "elixir", "calculo_salario.exs", nombre, horasString, valor_horaString
            );
            pb.redirectErrorStream(true);
            Process process = pb.start();

            java.io.BufferedReader reader =
                new java.io.BufferedReader(new java.io.InputStreamReader(process.getInputStream()));

            StringBuilder output = new StringBuilder();
            String line;
            while ((line = reader.readLine()) != null) {
                output.append(line).append("\n");
            }

            // Mostrar el resultado de Elixir en un JOptionPane
            JOptionPane.showMessageDialog(null, output.toString());

        } catch (Exception e) {
            e.printStackTrace();
            JOptionPane.showMessageDialog(null, "Ocurrió un error al calcular el salario.");
        }




        }
        
    
        
    }
