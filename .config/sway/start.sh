#!/bin/sh


export QT_QPA_PLATFORMTHEME='gnome'
export MOZ_ENABLE_WAYLAND=1
export _JAVA_AWT_WM_NONREPARENTING=1
export CLUTTER_BACKEND=wayland
export XDG_DESKTOP=sway
export QT_QPA_PLATFORM=wayland-egl
export SDL_VIDEODRIVER=wayland
export XDG_SESSION_TYPE=wayland
# export GTK_IM_MODULE=ibus
# export XMODIFIERS=@im=ibus
# export QT_IM_MODULE=ibus
export PATH=/home/kilometers/.cabal/bin:/home/kilometers/.ghcup/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/home/kilometers/.cargo/bin:/home/kilometers/go/bin:/home/kilometers/.local/bin:/home/kilometers/.emacs.d/bin

sway
