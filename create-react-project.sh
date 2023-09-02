#!/bin/bash

# set up color variables
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
CYAN='\033[0;36m'
PURPLE='\033[0;35m'
LIGHT_GRAY='\033[0;37m'
BLUE='\033[0;34m'
BLACK='\033[0;30m'
NC='\033[0m' # No Color

# ask user for name of directory
read -p "Enter the name a name for the project: " project_name

# ask user for which styling to use: styled-components or tailwindcss or chakra-ui or material-ui or bootstrap or mantine or none
read -p "Which styling do you want to use? (styled-components: s, tailwindcss: t, chakra-ui: c, material-ui: m, bootstrap: b, mantine: ma, none: n): " styling

directory="/c/Users/Tedane Blake/Documents/Projects/vite/$project_name"

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

case "$styling" in
  s|styled-components)
    # run react-ts-styled-components.sh
    bash "/c/Users/Tedane Blake/Desktop/Scripts/react-ts-styled-components.sh"
    ;;
  t|tailwindcss)
    # run react-ts-tailwindcss.sh
    bash "/c/Users/Tedane Blake/Desktop/Scripts/react-ts-tailwindcss.sh"
    ;;
  c|chakra-ui)
    echo "Creating a vite chakra-ui project"
    npm create vite@latest . -- --template react-ts
    echo "Installing dependencies"
    npm i
    echo "Installing chakra-ui"
    npm i @chakra-ui/react @emotion/react @emotion/styled framer-motion
    echo "Installing chakra-ui icons"
    npm i @chakra-ui/icons
    echo "don't forget to set up ChakraProvider in your main.tsx file"
    echo "chakra-ui docs: https://chakra-ui.com/getting-started/vite-guide"
    ;;
  m|material-ui)
    echo "Creating a vite material-ui project"
    npm create vite@latest . -- --template react-ts
    echo "Installing dependencies"
    npm i
    echo "Installing material-ui"
    npm install @mui/material @emotion/react @emotion/styled
    echo "Installing roboto font"
    npm install @fontsource/roboto
    echo "don't forget to import the roboto font in your index.css file"
    echo -e "import {GREEN}'@fontsource/roboto/300.css';"
    echo -e "import {GREEN}'@fontsource/roboto/400.css';"  
    echo -e "import '@fontsource/roboto/500.css';"
    echo -e "import '@fontsource/roboto/700.css';"
    

    ;;
  b|bootstrap)
    echo "Creating a vite bootstrap project"
    npm init vite@latest
    npm install --save-dev bootstrap@next @emotion/react @emotion/styled
    ;;
  ma|mantine)
    echo "Creating a vite mantine project"
    npm init vite@latest . -- --template react-ts
    npm install --save-dev @mantine/core @mantine/hooks @emotion/react
    ;;
  n|none)
    echo "Creating a vite project"
    npm init vite@latest . -- --template react-ts
    ;;
  *)
    echo "Invalid styling"
    read -p "Press enter to exit"
    exit 1
    ;;
esac

# open directory in vscode

code .

read -p "Press enter to exit"