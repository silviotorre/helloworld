import unittest

from helloworld2 import HelloWorld


class TestHelloWorld(unittest.TestCase):
    def test_say_hello(self):
        hello = HelloWorld()
        self.assertEqual(hello.say_hello(), "HELLO, WORLD!")


if __name__ == "__main__":
    unittest.main()
