# dotfile sync technique
# https://drewdevault.com/2019/12/30/dotfiles.html

# set prompt
export STARSHIP_CONFIG=~/.starship.toml
eval "$(starship init zsh)"

# aliases
alias reload="exec zsh"
alias zshrc="open -b com.microsoft.VSCode ~/.zshrc"
alias myip="ifconfig | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'"
alias desktop="cd ~/desktop"
alias lsa='ls -al'

# needs to be passed an arg for the dir to serve
alias serve="npx simplehttpserver"

# git aliases
alias gst='git status'
alias gp='git push'
alias gc='git commit -v'
alias gco='git checkout'
alias gaa='git add --all'
alias gcan='git commit --amend --no-edit'
alias gcam='git commit --amend -m'

# function to make a new branch after making commits to master by accident
newbranch() { git checkout -b $1 && git branch -D main && git checkout main && git pull && git checkout $1 }

# rust aliases
alias cnew="cargo new --vcs=none"
alias cr="cargo run"
alias cw="cargo watch -x run"
alias ct="cargo watch -x check -x test"

# get per-tab history
unsetopt inc_append_history
unsetopt share_history

# set up fnm, node version manager written in rust
# https://github.com/Schniz/fnm#shell-setup
eval "$(fnm env)"

## SCREENCASTIFY ##

# aliases for opening reops
alias sc="cd /Users/krnsk0/Desktop/screencastify/ && code sc.code-workspace"
alias edit="cd /Users/krnsk0/Desktop/castify-edit-broker/ && code ."
alias exp="cd /Users/krnsk0/Desktop/edit-experiments/ && code ."

# screecastify monorepo
alias cleanup="npx nx clear-tasks dev-studio-tasks && npx nx clean-init graphql-engine"
alias codegen="npx nx codegen studio-database-clients"
alias test="npx nx test" # needs args passed
alias format="npx nx format:write"
alias lint="npx nx affected:lint"
alias presets="npx nx run dev-video-cli:make-presets"
alias ingest="npx nx run dev-video-cli:ingest" # needs args passed
alias edit_start="code ~/.config/iterm2/AppSupport/Scripts/screencastify_start.py"
alias start="~/.config/iterm2/AppSupport/iterm2env-3.7/versions/3.7.9/bin/python3 ~/.config/iterm2/AppSupport/Scripts/screencastify_start.py"
alias fetchconfig="./scripts/fetch-config.ts --project-id cfy-stage"
