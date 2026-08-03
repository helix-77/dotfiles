if status is-interactive
    # No greeting
    set fish_greeting

    # Use starship prompt
    if command -v starship &>/dev/null
        starship init fish | source
    end

    # Apply terminal color sequences (Material You from wallpaper)
    if test -f ~/.local/state/quickshell/user/generated/terminal/sequences.txt
        cat ~/.local/state/quickshell/user/generated/terminal/sequences.txt
    end

    # Aliases
    alias clear "printf '\033[2J\033[3J\033[1;1H'" # fix: kitty doesn't clear scrollback properly
    alias celar "printf '\033[2J\033[3J\033[1;1H'"
    alias claer "printf '\033[2J\033[3J\033[1;1H'"
    if command -v eza &>/dev/null
        alias ls 'eza --icons'
    end
    alias q 'qs -c ii'
end


# Added by Antigravity CLI installer
set -gx PATH "/home/rahi/.local/bin" $PATH

# string match -q "$TERM_PROGRAM" "kiro" and . (kiro --locate-shell-integration-path fish)

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/rahi/miniforge3/bin/conda
    eval /home/rahi/miniforge3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/home/rahi/miniforge3/etc/fish/conf.d/conda.fish"
        . "/home/rahi/miniforge3/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/home/rahi/miniforge3/bin" $PATH
    end
end
# <<< conda initialize <<<


# >>> mamba initialize >>>
# !! Contents within this block are managed by 'mamba shell init' !!
set -gx MAMBA_EXE "/home/rahi/miniforge3/bin/mamba"
set -gx MAMBA_ROOT_PREFIX "/home/rahi/miniforge3"
$MAMBA_EXE shell hook --shell fish --root-prefix $MAMBA_ROOT_PREFIX | source
# <<< mamba initialize <<<

# pnpm
set -gx PNPM_HOME "/home/rahi/.local/share/pnpm"
if not string match -q -- "$PNPM_HOME/bin" $PATH
  set -gx PATH "$PNPM_HOME/bin" $PATH
end
# pnpm end


set -gx ANDROID_HOME /opt/android-sdk
set -gx ANDROID_SDK_ROOT /opt/android-sdk

fish_add_path $ANDROID_HOME/emulator
fish_add_path $ANDROID_HOME/platform-tools
fish_add_path $ANDROID_HOME/cmdline-tools/latest/bin

# opencode
fish_add_path /home/rahi/.opencode/bin


# openrouter
set -Ux OPENAI_API_KEY sk-eiXEom05hkSMS4ieujBWmDFlv9Rd1w7tFs4tJf7MsMewCrB7rDd7K4BelieOgHvA

# Use OpenRouter instead of OpenAI
set -Ux OPENAI_BASE_URL "https://opencode.ai/zen/v1"

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# openscience
fish_add_path /home/rahi/.openscience/bin

# Qwen Code PATH block begin
set -gx PATH '/home/rahi/.local/bin' $PATH
# Qwen Code PATH block end
