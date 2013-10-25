alias tlog='tail -f log/development.log'
alias zshconfig='nvim ~/.zshrc'
alias gitconfig='nvim ~/.gitconfig'
alias edot='homesick open dotfiles'
alias cddot='homesick cd dotfiles'
alias nm='nvim .'
alias chrome='open -a Google\ Chrome --args --disable-web-security'
alias firefox='open -a Firefox'
alias jekyll='jekyll serve --watch'
alias docker-cleanup='docker rm $(docker ps -aq)'
alias docker-ip='boot2docker ip | pbcopy'
alias zeusrake='zeus rake db:migrate && zeus rake db:test:prepare'
alias zeusc='stty sane'
alias c='cd ~/code'
alias s='cd ~/Dropbox/study'
alias notes='nvim ~/Dropbox/Apps/Editorial'
alias startmongo='mongod --config /usr/local/etc/mongod.conf'
alias update-phoenix='mix archive.install https://github.com/phoenixframework/archives/raw/master/phoenix_new.ez'

# phoenix alias
alias mpr="mix phoenix.routes"
alias mps="mix phoenix.server"
alias mem="mix ecto.migrate"
alias iexm="iex -S mix"
