#!/usr/bin/env python
from subprocess import check_output

import unittest
import os
from pwd import getpwnam

class TestWorkstation(unittest.TestCase):
    def test_workstation_user(self):
        check_output('id $WORKSTATION_USER', shell=True)

    def test_file_permissions(self):
        workstation_user = os.environ.get('WORKSTATION_USER')
        workstation_user_uid = getpwnam(workstation_user)

        def assertOwnedByWorkstationUser(path):
            result = os.stat(os.path.expanduser(path.format(user=workstation_user)))
            self.assertEquals(result.st_uid, workstation_user_uid.pw_uid)

        assertOwnedByWorkstationUser("~{user}/.editorconfig")
        assertOwnedByWorkstationUser("~{user}/.bashrc")

    def test_vim(self):
        check_output('vim --version | grep "+visualextra"', shell=True)

if __name__ == '__main__':
    unittest.main()
