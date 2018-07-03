# Install os-specific stuff

if test "$(uname)" = "Darwin"
then
	echo "› sudo softwareupdate -i -a"
	sudo softwareupdate -i -a
  	brew bundle
elif test "$(expr substr $(uname -s) 1 5)" = "Linux"
then
	sudo apt-get update
	sudo apt-get install -y zsh wget git
fi


