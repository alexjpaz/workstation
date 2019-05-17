#!/usr/bin/env python
from subprocess import check_output

import unittest

class TestWorkstation(unittest.TestCase):
    def test_workstation_user(self):
        check_output('id $WORKSTATION_USER', shell=True)

    def test_vim(self):
        check_output('vim --version | grep "+visualextra"', shell=True)

if __name__ == '__main__':
    unittest.main()
