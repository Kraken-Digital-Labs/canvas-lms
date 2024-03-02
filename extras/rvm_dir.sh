mkdir ~/.rvm
export RVM_DIR="$HOME/.rvm"
echo [[ -s "$RVM_DIR/scripts/rvm" ]] && source "$RVM_DIR/scripts/rvm" >> ~/.bash_profile
export PATH="$PATH:$RVM_DIR/bin" >> ~/.bashrc
source ~/.bashrc
unset GEM_HOME
source ~/.rvm/scripts/rvm
rvm autolibs disable
