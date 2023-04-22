##
# EPITECH PROJECT, 2022
# space-track-home (Workspace)
# File description:
# __init__.py
##

from src.constants import Constants
from src.disp import Disp
from src.check import Check
from src.load import Load


class Src(Constants):  # , Disp
    """ A class that contains the other sub classes of the program """

    def __init__(self) -> None:
        super().__init__()
        self.constants = Constants()
        self.disp = Disp()
        self.check = Check()
        self.load = Load()
