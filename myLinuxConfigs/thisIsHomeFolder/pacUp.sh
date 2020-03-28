#!/bin/bash

sudo pacman -Syu && sudo pacman -Scc && sudo pacman -Rns $(sudo pacman -Qdtq) 
