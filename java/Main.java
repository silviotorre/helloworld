// Purpose: The main class for the Hello World program in model-view-controller style.
// Compile: javac *.java
// Run: java Main
// Output: Hello, Java!

public class Main {
    // The main method
    public static void main(String[] args) {
        // Create model, view, and controller
        HelloWorldModel model = new HelloWorldModel();// Create model
        HelloWorldView view = new HelloWorldView();// Create view
        HelloWorldController controller = new HelloWorldController(model, view);// Create controller
        // Display the initial message
        // Update model and view
        controller.setMessage("Hello, Java!");// Update model
        controller.updateView();// Update view
    }
}
