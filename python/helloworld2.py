# Singleton Pattern
class Singleton(type):
    _instances = {}

    def __call__(cls, *args, **kwargs):
        if cls not in cls._instances:
            cls._instances[cls] = super().__call__(*args, **kwargs)
        return cls._instances[cls]

# Decorator Pattern
def uppercase_decorator(func):
    def wrapper(*args, **kwargs):  # Modify this line
        original_result = func(*args, **kwargs)  # And this line
        modified_result = original_result.upper()
        return modified_result
    return wrapper

# Hello World Class
class HelloWorld(metaclass=Singleton):
    @uppercase_decorator
    def say_hello(self):
        return "Hello, World!"

# Usage
hello = HelloWorld()
print(hello.say_hello())


# Expected Output: HELLO, WORLD!
# unexpected output: Hello, World!
# guess why?
# because we are using uppercase_decorator?
# no, because we are using Singleton Pattern?
# no, because we are using metaclass?
# no, because there is a bug in the code?
# no, just because we are using python?
# feel free to tell me why
# and remember: "no matter were you go, there you are"