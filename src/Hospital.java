
import java.awt.Font;
import javax.swing.JFrame;
import javax.swing.UIManager;
import javax.swing.plaf.FontUIResource;


public class Hospital {

   
    public static void main(String[] args) {
        
        
        Login_portion ob = new Login_portion();
        
        
        ob.setVisible(true);
        
        
         UIManager.put("OptionPane.messageFont", new FontUIResource(new Font(
                "Tempus Sans ITC", Font.BOLD, 16)));
       
    }
    
}
