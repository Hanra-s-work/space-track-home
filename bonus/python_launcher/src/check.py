##
# EPITECH PROJECT, 2022
# space-track-home (Workspace)
# File description:
# check.py
##

import os


class Check:
    def __init__(self) -> None:
        pass

    def check_if_file_exists(self, path: str) -> bool:
        if (os.path.exists(path)):
            return True
        return False

    def check_if_folder(self, path: str) -> bool:
        if (os.path.isdir(path)):
            return True
        return False

    def check_if_file(self, path: str) -> bool:
        if (os.path.isfile(path)):
            return True
        return False
