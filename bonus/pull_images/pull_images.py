#!/bin/env python3
import os
import requests


def pull_images():
    """ pull all images """
    folder = "images"
    if (os.path.exists(folder) == False):
        os.mkdir(folder)
    for i in "ABCDEFGHIJKLMNOPQRSTUVWXYZ":
        for b in range(0, 9):
            for c in range(0, 9):
                image = f"{i}{b}{c}.jpg"
                path = f"{folder}/{image}"
                url = f"https://atlas-content-cdn.pixelsquid.com/assets_v2/246/2463171472026245080/jpeg-600/{image}"

                print(f"Fetching: {image} at {url}")
                e = requests.get(url, timeout=20)
                if (e.status_code == 200):
                    print(f"Fetched {image} at {url}")
                    print(f"Writing: {image} to {folder}")
                    f = open(path, "wb")
                    f.write(e.content)
                    f.close()
                    print(f"{image} was written to {folder}")
                else:
                    print(f"Failed to fetch {image} at {url}")


if __name__ == "__main__":
    pull_images()
