##
# EPITECH PROJECT, 2022
# space-track-home (Workspace)
# File description:
# launcher.py
##

from src import *
# import os
# import docker

# class Docker(Check):
#     """ The docker class """


class Launcher(Src):
    """ The launcher for the docker """

    def __init__(self) -> None:
        super().__init__()
        self.toml = dict()

    def check_args(self) -> None:
        """ Check the arguments """
        if self.argc < 1:
            self.perror("At least 1 argument is required")
        if self.check.check_if_file_exists(self.argv[0]) == False:
            self.perror("At least 1 argument is required")

    def main(self) -> None:
        """ The main function """
        self.check_args()
        # self.toml = self.load_toml_file(self.argv[0])
        # print(f"toml data = {self.toml}")
        # self.check_toml_file()
        # self.disp_success("Everything is ok")
        exit(self.success)


if __name__ == "__main__":
    LI = Launcher()
    LI.main()
