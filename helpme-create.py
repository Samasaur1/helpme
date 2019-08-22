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
    print("Use `helpme-create topic`")
    print("To read a helpme article, use `helpme topic`")
    exit()


path = Path(f"{argv[1]}.txt")
path.touch()

if "-t" in argv or "--textedit" in argv:
    run(["open", "-e", path.name])
    print("Make sure to save your changes!")
elif "-v" in argv or "--vim" in argv:
    run(["vim", path.name])
elif "-n" in argv or "--nano" in argv:
    run(["nano", path.name])
else:
    run(["open", "-e", path.name])
    print("Make sure to save your changes!")