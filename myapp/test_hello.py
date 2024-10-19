import unittest
from hello import hello

class TestHello(unittest.TestCase):
    def test_hello_default(self):
        self.assertEqual(hello(), "Hello World!")

    def test_hello_custom_name(self):
        self.assertEqual(hello("Alice"), "Hello Alice!")

    def test_hello_empty_string(self):
        self.assertEqual(hello(""), "Hello !")

if __name__ == '__main__':
    unittest.main()
