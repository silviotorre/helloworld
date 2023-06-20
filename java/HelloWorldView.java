// Purpose: Display a message to the console (the view).
public class HelloWorldView {
    // Display a message
    public void displayMessage(String message) {
        // Print the message to the console
        System.out.println(message);
        // instead of printing the message to the console, we can display it in a dialog box
        // the dialog box is a window that pops up on the screen
        // the dialog box is a view
        //other alternative toSystem.out.println(message) is JOptionPane.showMessageDialog(null, message);
        //JOptionPane is a class in the javax.swing package
        //So is necessary to import javax.swing.JOptionPane
        //JOptionPane.showMessageDialog(null, message);
        //JOptionPane.showMessageDialog(null, message, "Title", JOptionPane.INFORMATION_MESSAGE);
        //other options are: ERROR_MESSAGE, WARNING_MESSAGE, QUESTION_MESSAGE, PLAIN_MESSAGE
        //you can also use print() or printf() instead of println(): print() does not add a new line after the message
        //printf() allows you to format the message using special characters: %s for strings, %d for integers, %f for floating point numbers
        //System.out.printf("Hello %s, your age is %d and your height is %f", "John", 25, 1.75);

    }
}
