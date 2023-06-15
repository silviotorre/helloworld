# Import the unittest module to use the TestCase class
import unittest

# Import the class to test
from helloworld2 import HelloWorld

# Inherit from TestCase
class TestHelloWorld(unittest.TestCase):

    # Define the test method
    def test_say_hello(self):
        # Create an instance of the class to test
        hello = HelloWorld()

        # Test that the method returns the correct output
        self.assertEqual(hello.say_hello(), "HELLO, WORLD!")

# Run the test
if __name__ == '__main__':
    unittest.main()