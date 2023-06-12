if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Config
set -U fish_greeting
fish_vi_key_bindings

# Key bindings
bind --mode default \co lfcd
bind --mode insert \co lfcd
