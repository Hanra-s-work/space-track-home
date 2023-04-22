##
# EPITECH PROJECT, 2022
# space-track-home (Workspace)
# File description:
# disp.py
##

from sys import argv, stderr
from src.constants import Constants as const


class Disp(const):
    """ The class in charge of managing the message display """

    def __init__(self) -> None:
        super().__init__()
        self.test_disp = "In class disp"

    def disp_help(self) -> None:
        """ the function in charge of displaying the help """
        print(f"USAGE: {argv[0]} TOML_FILE")
        print("DESCRIPTION:")
        print("\tTOML_FILE\tfile containing the docker configuration in toml format")

    def perror(self, msg: str) -> None:
        """ the function in charge of displaying the fatal error messages """
        print(f"{msg}", file=stderr)
        exit(self.err)

    def disp_error(self, error: str) -> None:
        """ the function in charge of displaying the error message """
        print(f"Error: {error}", file=stderr)

    def disp_success(self, msg: str) -> None:
        """ the function in charge of displaying the success message """
        print(f"{msg}")
