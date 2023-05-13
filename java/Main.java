public class Main {
    // The main method
    public static void main(String[] args) {
        // Create model, view, and controller
        HelloWorldModel model = new HelloWorldModel();
        HelloWorldView view = new HelloWorldView();
        HelloWorldController controller = new HelloWorldController(model, view);
        // Display the initial message
        // Update model and view
        controller.setMessage("Hello, Java!");
        controller.updateView();
    }
}
