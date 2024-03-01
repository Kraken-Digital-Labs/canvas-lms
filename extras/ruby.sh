gpg --keyserver keyserver.ubuntu.com --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s
mkdir ~/.rvm
echo [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"' >> ~/.bash_profile
echo 'export PATH="$PATH:$HOME/.rvm/bin"' >> ~/.bashrc
source ~/.bashrc
unset GEM_HOME
source ~/.rvm/scripts/rvm
rvm autolibs disable
