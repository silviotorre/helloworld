public class HelloWorldModel {
    // The message to display
    private String message;

    public HelloWorldModel() {
        // Set the default message
        this.message = "Hello, World!";
    }

    public String getMessage() {
        // Return the message
        return this.message;
    }

    public void setMessage(String message) {
        // Set the message
        this.message = message;
    }
}
