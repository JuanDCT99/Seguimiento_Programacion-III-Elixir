import java.awt.Component;
import javax.swing.JOptionPane;

public class Mensaje {
    public Mensaje() {}

    public static void main(String[] var0) {
      if (var0.length > 0 && var0[0].equals("input")) {
         String var1 = var0[1];
         String var2 = JOptionPane.showInputDialog((Component)null, var1);
         System.out.println(var2);
      } else if (var0.length > 0) {
         JOptionPane.showMessageDialog((Component)null, var0[0]);
      } else {
         JOptionPane.showMessageDialog((Component)null, "No message provided.");
      }

   }
}