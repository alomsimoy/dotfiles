#!/usr/bin/env python3
import subprocess
import time
import os

f = os.environ["HOME"]+"/.config/scripts/"+"window_names.txt"

change = []
lines = open(f).read().splitlines()
for l in lines:
    try:
        change.append([l.split()[0], (" ").join(l.split()[1:])])
    except IndexError:
        pass

get = lambda cmd: subprocess.check_output(cmd).decode("utf-8").strip()
curr_1 = []

while True:
    try:
        curr_2 = get(["wmctrl", "-lp"]).splitlines()
        new = [w for w in curr_2 if not w in curr_1]
        for item in new:
            line = item.split(); pid = line[2]
            procs = get(["ps", "-e"]).splitlines()
            match = [l for l in procs if pid in l][0]
            for app in [app for app in change if app[0] in match]:
                subprocess.Popen(["xdotool", "set_window", "--name", app[1], line[0]])
        curr_1 = curr_2
        time.sleep(0.3)
    except:
        pass
