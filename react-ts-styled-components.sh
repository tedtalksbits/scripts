echo "Creating a ts vite styled-components project"
npm create vite@latest . -- --template react-ts
echo "Installing dependencies"
npm i
echo "Installing styled-components"
npm install --save styled-components@latest
npm install --save-dev @types/styled-components
