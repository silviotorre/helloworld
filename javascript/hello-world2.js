// Hallo JavaScript code: here are using Module, Observer and Factory design patterns
var MyModule = (function() {
    // private members of the module
    var observers = [];

    function registerObserver(observer) {
        observers.push(observer);
    }

    function notifyObservers(message) {
        // notify all observers
        observers.forEach(function(observer) {
            observer.notify(message);
        });
    }

    function createMessage() {
        // factory method
        var message = {
            text: "Hello, World!",
            print: function() {
                console.log(this.text);// print the message on the console. Use inspect element to see the result in browser. Instructions: right click on the page, select inspect element, select console tab or press F12 and select console tab.
                
            }
        };
        // return the created object
        return message;
    }

    return {
        // public members of the module
        registerObserver: registerObserver,
        createMessage: createMessage,
        notifyObservers: notifyObservers
    };
})();

var Observer = function(name) {
    // constructor
    this.name = name;
};

Observer.prototype.notify = function(message) {
    // method
    console.log('Observer ' + this.name + ' noticed the message: ' + message.text);
};

window.onload = function() {
    // create observers during the page load
    var observer1 = new Observer('A');
    var observer2 = new Observer('B');
    // register observers
    MyModule.registerObserver(observer1);
    MyModule.registerObserver(observer2);
    // create a message
    var message = MyModule.createMessage();
    MyModule.notifyObservers(message);
    // print the message
    message.print();
};
