# Install os-specific stuff

if test "$(uname)" = "Darwin"
then
	echo "› sudo softwareupdate -i -a"
	sudo softwareupdate -i -a
elif test "$(expr substr $(uname -s) 1 5)" = "Linux"
then
	sudo apt-get update
fi


