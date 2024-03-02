mkdir ~/.rvm
echo [[ -s "$HOME/.rvm/scripts/rvm" ]]
source "$HOME/.rvm/scripts/rvm"' >> ~/.bash_profile
export PATH="$PATH:$HOME/.rvm/bin" >> ~/.bashrc
source ~/.bashrc
unset GEM_HOME
source ~/.rvm/scripts/rvm
rvm autolibs disable
