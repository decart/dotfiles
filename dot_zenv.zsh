# cat .zenv.zsh
COLORTERM=truecolor
EDITOR='nvim'
ENABLE_CORRECTION="true"

FZF_DEFAULT_OPTS="--border=rounded --marker=\" \" --color=gutter:0,hl:#ff0000,hl+:#ff0000,marker:#76FF03"

ZSH_AUTOSUGGEST_STRATEGY=(match_prev_cmd completion)
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
ZSH_AUTOSUGGEST_USE_ASYNC=1

ZSH_PECO_HISTORY_OPTS="--layout=bottom-up --initial-filter=Fuzzy"

NVM_LAZY_LOAD=true
