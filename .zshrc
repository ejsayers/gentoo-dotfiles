# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#autoload -Uz compinit
#compinit -C

# Remove all beeps
unsetopt BEEP

# Load antidote plugins
source ~/.antidote/antidote.zsh
antidote load

# fzf keybinds
source ~/.zsh_plugins/completion.zsh
source ~/.zsh_plugins/key-bindings.zsh

# Aliases
source ~/.config/aliases


# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


