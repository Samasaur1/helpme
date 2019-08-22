#!/usr/bin/env python3
import os
from sys import argv
from pathlib import Path
from subprocess import run

os.chdir(os.path.expanduser("~"))

if not os.path.isdir(".helpme"):
    if os.path.exists(".helpme"):
        os.remove(".helpme")
    os.mkdir(".helpme")

os.chdir(".helpme")

if len(argv) == 1:
    print("Use `helpme-delete topic`")
    print("To read a helpme article, use `helpme topic`")
    exit()

os.remove(f"{argv[1]}.txt")