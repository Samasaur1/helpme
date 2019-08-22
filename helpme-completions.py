#!/usr/bin/env python3
import os
from sys import argv
from pathlib import Path

os.chdir(os.path.expanduser("~"))

if not os.path.isdir(".helpme"):
    if os.path.exists(".helpme"):
        os.remove(".helpme")
    os.mkdir(".helpme")

os.chdir(".helpme")

if len(argv) != 1:
    exit()

# for item in os.listdir("."):
#     print(item[:-4], end=" ")
print(" ".join(map(lambda x: x[:-4], os.listdir("."))), end="")