import javax.swing.JOptionPane;
import java.io.*;

public class Mensaje {
    public static void main(String[] args) {
        try {
            // 1) Pedir el mensaje al usuario para su ingreso por medio de la consola 
            String mensaje = JOptionPane.showInputDialog(null, "Ingrese un mensaje:");
            if (mensaje == null || mensaje.trim().isEmpty()) {
                JOptionPane.showMessageDialog(null, "No se proporcionó mensaje.");
                return;
            }

            // 2) llamado de elixir
            ProcessBuilder pb = new ProcessBuilder("elixir", "mayusculas.exs", mensaje);
            pb.redirectErrorStream(true);

            Process p = pb.start();

            BufferedReader br = new BufferedReader(new InputStreamReader(p.getInputStream()));
            String respuesta = br.readLine(); // Elixir devuelve una línea
            int exit = p.waitFor();

            // 3) Mostrar resultado usando Joption
            if (respuesta != null && !respuesta.isEmpty()) {
                JOptionPane.showMessageDialog(null, respuesta);
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
