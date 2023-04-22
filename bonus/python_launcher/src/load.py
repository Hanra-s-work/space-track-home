##
# EPITECH PROJECT, 2022
# space-track-home (Workspace)
# File description:
# load.py
##

import toml
import jsons
import csv23
from src import Disp as DI
from src import Check as CH
from src import Constants as CO


class Load(DI, CH, CO):

    def load_file_content(self, filepath: str) -> str:
        try:
            file = open(filepath, "r", encoding="utf-8")
            content = file.read()
            file.close()
            return content
        except FileNotFoundError:
            self.perror(f"Error: {filepath} not found")

    def load_csv_file(self, filepath: str) -> list:
        """ Load a csv file """
        try:
            file = open(filepath, "r", encoding="utf-8")
            reader = csv23.reader(file)
            file.close()
            return list(reader)
        except FileNotFoundError:
            self.perror(f"Error: {filepath} not found")

    def load_toml_file(self, filepath: str) -> str:
        try:
            file = open(filepath, "r", encoding="utf-8")
            content = toml.load(file)
            file.close()
            print(f"content = {content}")
            return content
        except FileNotFoundError:
            self.perror(f"Error: {filepath} not found")

    def load_json(self, filepath: str) -> str:
        file_content = self.load_file_content(filepath)
        return jsons.loads(file_content)
