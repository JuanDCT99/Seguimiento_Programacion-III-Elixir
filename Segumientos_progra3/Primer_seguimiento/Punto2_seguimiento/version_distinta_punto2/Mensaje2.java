import javax.swing.JOptionPane;
import java.io.*;



public class Mensaje2 {

    public static void main(String[] args) {
        try {
            // 1) Pedir entrada de informacion al usuario
            String mensaje = JOptionPane.showInputDialog(null, "Proporcione un Mensaje:");
            if (mensaje == null || mensaje.trim().isEmpty()) {
                JOptionPane.showMessageDialog(null, "No se proporcionó mensaje.");
                return;
            }

            // 2) Ejecutar script Elixir con ese mensaje
            ProcessBuilder pb = new ProcessBuilder("elixir", "conteo_letras.exs", mensaje);
            pb.redirectErrorStream(true);

            
            Process p = pb.start();

            
            BufferedReader br = new BufferedReader(new InputStreamReader(p.getInputStream()));
            String respuesta = br.readLine(); // Elixir devuelve una línea
            int exit = p.waitFor();

            // 3) Mostrar resultado
            if (respuesta != null && !respuesta.isEmpty()) {
                JOptionPane.showMessageDialog(null, " La palabra otorgada tiene: " + respuesta + " letras ");
            } else {
                JOptionPane.showMessageDialog(null,
                    "Elixir no devolvió salida. Código de salida: " + exit);
            }
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null, "Error al ejecutar Elixir: " + e.getMessage());
            e.printStackTrace();
        }
    }
}
    
