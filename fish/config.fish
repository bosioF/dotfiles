if status is-interactive
	set fish_greeting

	oh-my-posh init fish --config $HOME/.config/ohmyposh/config.omp.json | source
end

fish_add_path "$HOME/.local/bin"
fish_add_path "$HOME/bin"
fish_add_path "$HOME/.spicetify"
fish_add_path "/opt/metasploit-framework/bin/msfconsole"

if test -f "$HOME/.cargo/env.fish"
	source "$HOME/.cargo/env.fish"
else if test -f "$HOME/.cargo/env"
	fish_add_path "$HOME/.cargo/bin"
end

