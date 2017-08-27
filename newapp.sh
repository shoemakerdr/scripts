#!/bin/bash

# -----------------------------------------------------------------------------
# 	A simple script that creates a new directory structure for a simple web app
# 	and initiates it as a git repo and npm package. It also copies in a simple webpack config file.
#
# 		<directory_name>
# 		|-- src/
# 		    |-- index.js
# 		|-- index.html
# 		|-- style.css
#		|-- .gitignore
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
cp ~/scripts/copy_files/.gitignore .
cp ~/scripts/copy_files/webpack.config.js .
touch style.css
touch README.md
mkdir dist
mkdir src
cd src
touch index.js
cd ..
git init
npm init -y
echo "Created new app: ${DIR}.\ncd ${DIR} to get started."
