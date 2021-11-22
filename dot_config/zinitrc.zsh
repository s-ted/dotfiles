# -*- mode: sh; sh-indentation: 4; indent-tabs-mode: nil; sh-basic-offset: 4; -*-

zinit ice wait"2" lucid atclone"dircolors -b LS_COLORS > clrs.zsh" \
    atpull'%atclone' pick"clrs.zsh" nocompile'!' \
    atload'zstyle ":completion:*" list-colors “${(s.:.)LS_COLORS}”'
zinit light trapd00r/LS_COLORS


# sharkdp/fd
zinit ice as"command" from"gh-r" mv"fd* -> fd" pick"fd/fd"
zinit light sharkdp/fd

# sharkdp/bat
zinit ice wait"2" as"command" from"gh-r" mv"bat* -> bat" pick"bat/bat"
zinit light sharkdp/bat

# ogham/exa, replacement for ls
zinit ice wait"2" lucid from"gh-r" as"program" mv"bin/exa* -> exa"
zinit light ogham/exa

zstyle ":history-search-multi-word" page-size "11"
zinit ice wait"1" lucid
zinit light zdharma-continuum/history-search-multi-word

# starship
zinit ice as"command" from"gh-r" \
          atclone"./starship init zsh > init.zsh; ./starship completions zsh > _starship" \
          atpull"%atclone" src"init.zsh"
zinit light starship/starship


zinit ice wait"1" svn
zinit snippet PZT::modules/git

zinit ice wait"1" svn
zinit snippet PZT::modules/docker

zinit wait"2" lucid light-mode for \
	chrissicool/zsh-256color \
	wfxr/forgit \
	zpm-zsh/colorize \
	molovo/tipz \
	gko/ssh-connect \
	PZTM::ssh \
	OMZP::bgnotify \
	OMZP::github \
	OMZP::helm \
	OMZP::kubectl \
	OMZP::systemd \
	OMZP::thefuck \
	OMZP::zoxide


zinit wait lucid light-mode for \
 atinit"ZINIT[COMPINIT_OPTS]=-C; zicompinit; zicdreplay" \
    zdharma-continuum/fast-syntax-highlighting \
 blockf \
    zsh-users/zsh-completions \
 atload"!_zsh_autosuggest_start" \
    zsh-users/zsh-autosuggestions

zinit ice lucid nocompile wait'1' nocompletions
zinit load MenkeTechnologies/zsh-more-completions

#zinit ice lucid nocompile wait"1"
#zinit load MenkeTechnologies/zsh-expand

zinit ice lucid wait'1' nocompile
zinit load MenkeTechnologies/zsh-very-colorful-manuals
