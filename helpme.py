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

if len(argv) == 1:
    print("Use `helpme topic` where topic is something you have written a helpme article on")
    print("To create a helpme article, use `helpme-create topic`")
    exit()

target = argv[1]

for item in os.listdir("."):
    if target + ".txt" == item:
        print(Path(item).read_text())