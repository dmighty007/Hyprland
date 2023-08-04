from __future__ import (absolute_import, division, print_function)

from ranger.api.commands import *

import os

class emptytrash(Command):
    """:empty

    Empties the trash 
    """

    def execute(self):
        HOME = os.environ['HOME']
        self.fm.run(f'trash-empty')

class terminal(Command):
    """:terminal

    Spawns an "x-terminal-emulator" starting in the current directory.
    """

    def execute(self):
        #from ranger.ext.get_executables import get_term
        self.fm.run(f"wezterm start --cwd {self.fm.thisdir.path}")

class Print(Command):
    """:terminal

    Spawns an "x-terminal-emulator" starting in the current directory.
    """

    def execute(self):
        #from ranger.ext.get_executables import get_termself
        pwd = self.fm.thisfile
        #print(pwd)

        self.fm.run(f'lp -o media=a4 -o sides=two-sided-long-edge -o fit-to-page "{pwd}"')
