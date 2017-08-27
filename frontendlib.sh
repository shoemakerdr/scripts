#!/bin/bash

# -----------------------------------------------------------------------------
#   A script that builds the boilerplate needed to build a front end library
#   that can be imported via npm. You can use ES6 import statements out of
#   the box. The following is the directory structure this script makes:
#
# 		<directory_name>
# 		|-- dist/
# 		|-- src/
# 		    |-- index.js
# 		|-- test/
# 		    |-- index.test.js
#		|-- .gitignore
#		|-- .babelrc
#		|-- node_modules
#		|-- webpack.config.js
#		|-- package.json
#		|-- package-lock.json
#		|-- README.md
#
# 	I recommend added the following line to your ~/.bashrc file:
#
#		alias frontlib="sh ~/dev/scripts/frontendlib.sh"
#
# 	This assumes that this 'scripts' repository has been cloned into a folder
#   called 'dev' in your home directory
#
# 	Type 'source ~/.bashrc' after editing the .bashrc file to reload it
#
# 	Usage:
#		$ frontlib <directory_name>
#
#   NOTE: This script assumes you have node and npm installed.
#
# -----------------------------------------------------------------------------

DIR=$1
mkdir $DIR
cd $DIR
cp ~/dev/scripts/copy_files/.gitignore .
cp ~/dev/scripts/copy_files/.babelrc .
cp ~/dev/scripts/copy_files/webpack.config.js .
touch README.md
echo "# ${DIR}" >> README.md
mkdir dist
mkdir src
cd src
touch index.js
cd ..
mkdir test
cd test
touch index.test.js
cd ..
git init
npm init -y
npm i -D mocha chai webpack babel-register babel-polyfill babel-preset-env
echo "Created new front end library: ${DIR}.\n\ncd ${DIR} to get started.\n"
echo "You should add:\n\n\"test\": \"mocha --require babel-polyfill --compilers js:babel-register --recursive || true\" \n\nto your npm scripts in your package.json to set up your testing environment.\n\n"
