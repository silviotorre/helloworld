// Purpose: Display a message to the console (the view).
public class HelloWorldView {
    // Display a message
    public void displayMessage(String message) {
        // Print the message to the console
        System.out.println(message);
        //alternative toSystem.out.println(message) is JOptionPane.showMessageDialog(null, message);
        //JOptionPane is a class in the javax.swing package
        //So is necessary to import javax.swing.JOptionPane

    }
}
