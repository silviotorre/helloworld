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
    
    # if you want to run the test in the command line, use the following command:
    # python -m unittest hellotest.py
    # or
    # python -m unittest -v hellotest.py
    # or
    # python -m unittest discover -v
    # discover will run all the tests in the current directory
    # -v will give you more details about the test
    # -v is optional
    # testing is important because it will help you to find bugs in your code
    # and it will help you to make sure that your code is working as expected
    # if you want to learn more about testing, check out the following link:
    # https://docs.python.org/3/library/unittest.html
