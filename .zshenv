# export XDG_CURRENT_DESKTOP=gnome
export QT_QPA_PLATFORMTHEME=gtk2
export UNITY_NOPROXY=localhost,127.0.0.1

export ADB_VENDOR_KEY="$XDG_CONFIG_HOME"/android
export ANDROID_AVD_HOME="$XDG_DATA_HOME"/android/
export ANDROID_EMULATOR_HOME="$XDG_DATA_HOME"/android/
export ANDROID_SDK_HOME="$XDG_CONFIG_HOME"/android
# export CARGO_HOME="$XDG_DATA_HOME"/cargo
export GOPATH="$XDG_DATA_HOME"/go
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
# export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority
export ZDOTDIR=$HOME/.config/zsh
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export WASI_SDK_PATH="/opt/wasi-sdk"

alias yarn="yarn --use-yarnrc $XDG_CONFIG_HOME/yarn/config"
