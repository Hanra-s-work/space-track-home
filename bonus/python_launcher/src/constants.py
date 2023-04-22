##
# EPITECH PROJECT, 2022
# space-track-home (Workspace)
# File description:
# constants.py
##

from sys import argv


class Constants:
    def __init__(self) -> None:
        self.err = 84
        self.success = 0
        self.argv = argv[1:]
        self.argc = len(self.argv)
