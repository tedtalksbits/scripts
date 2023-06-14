#!/bin/bash
# ask user for name of directory
read -p "Enter the name a name for the project: " project_name
read -p "What type of project is this? (web: w, node: n, script: s): " project_type

project_folder=""

case "$project_type" in
  w|web)
    echo "Creating a web project"
    project_folder="web"
    ;;
  n|node)
    echo "Creating a node project"
    project_folder="node"
    ;;
  s|script)
    echo "Creating a script project"
    project_folder="script"
    ;;
  *)
    echo "Invalid project type"
    read -p "Press enter to exit"
    exit 1
    ;;
esac
directory="/c/Users/Tedane Blake/Documents/Projects/$project_folder/$project_name"

# check if directory exists
if [ -d "$directory" ]; then
    echo "Directory already exists"
    read -p "Press enter to exit"
    exit 1
    
else
  #  create directory
  mkdir -p "$directory"
fi

# change to directory

cd "$directory"

# create files

touch index.html
touch style.css
touch app.js

echo "Directory created successfully"

# open directory in vscode

code .

read -p "Press enter to exit"