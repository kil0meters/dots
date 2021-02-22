#!/bin/sh

export MOZ_ENABLE_WAYLAND=1
export _JAVA_AWT_WM_NONPARENTING=1
export CLUTTER_BACKEND=wayland
export XDG_DESKTOP=sway
export QT_QPA_PLATFORM=wayland-egl
export SDL_VIDEODRIVER=wayland
export XDG_SESSION_TYPE=wayland

sway
