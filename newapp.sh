#!/bin/bash

# -----------------------------------------------------------------------------
# 	A simple script that creates a new directory structure for a simple web app
# 	and initiates it as a git repo.
#
# 		<directory_name>
# 		|-- src/
# 			|-- index.js
# 		|-- index.html
# 		|-- style.css
#
# 	I recommend added the following line to your ~/.bashrc file:
#
#		alias newapp="sh ~/scripts/newapp.sh"
#
# 	This assumes that this 'scripts' repository has been cloned into your home
# 	directory
#
# 	Type 'source ~/.bashrc' after editing the .bashrc file to reload it
#
# 	Usage:
#		$ newapp <directory_name>
#
# -----------------------------------------------------------------------------

DIR=$1
mkdir $DIR
cd $DIR
cp ~/scripts/copy_files/index.html .
touch style.css
mkdir dist
mkdir src
cd src
touch index.js
cd ..
git init
echo "Created new app: ${DIR}."
