public class HelloWorldController {
    // The model
    private HelloWorldModel model;
    private HelloWorldView view;

    public HelloWorldController(HelloWorldModel model, HelloWorldView view) {
        // Set the model
        this.model = model;
        this.view = view;
    }

    public void setMessage(String message) {
        // Set the message
        this.model.setMessage(message);
    }

    public void updateView() {
        // Get the message from the model
        String message = this.model.getMessage();
        this.view.displayMessage(message);
    }
}
