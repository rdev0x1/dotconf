if status is-interactive
    # Commands to run in interactive sessions can go here
end

starship init fish | source

set -xg XDG_RUNTIME_DIR /tmp/xdg_runtime_abd/
set -xg QT_QPA_PLATFORM wayland
set -xg DISPLAY :0
set -xg WAYLAND_DISPLAY $XDG_RUNTIME_DIR/wayland-1
set -xg GDK_BACKEND wayland
set -xg XCURSOR_SIZE 24

set -gx ANDROID_SDK_ROOT /opt/android-sdk/
set -gx CHROME_EXECUTABLE /usr/bin/chromium
set -gx CHEAT_CONFIG_PATH ~/.config/cheat/conf.yml
set -gx ANDROID_HOME /opt/android-sdk

set -gx EDITOR nvim
set -gx VISUAL nvim

set -gx RUSTUP_HOME /opt/rust
set -gx CARGO_HOME /opt/rust
set -gx PATH $PATH /opt/flutter/bin /opt/android-sdk/cmdline-tools/latest/bin/ /opt/rust/bin
