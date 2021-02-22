#!/bin/python

import i3ipc

ipc = i3ipc.Connection()

def on_window_focus(ipc: i3ipc.Connection, _):
    for window in ipc.get_tree():
        # print(window.type)
        if not window.focused and window.type == "floating_con":
            window.command('opacity 0.5')
        else:
            window.command('opacity 1.0')


on_window_focus(ipc, 0)

ipc.on("window::focus", on_window_focus)
ipc.main()
