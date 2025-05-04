#!/bin/bash
# -----------------------------------------------
# 💫 Lock Screen Script for Hyprland
# 💫 Author: https://github.com/JaKooLit
# -----------------------------------------------

# Check if hyprlock is running, if not, start it
if ! pidof hyprlock > /dev/null; then
    hyprlock
fi