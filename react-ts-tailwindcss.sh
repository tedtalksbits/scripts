echo "Creating a vite tailwindcss project"
npm create vite@latest . -- --template react-ts
echo "Installing dependencies"
npm i
echo "Installing tailwindcss and postcss and autoprefixer"
npm install -D tailwindcss postcss autoprefixer
echo "Initializing tailwindcss"
npx tailwindcss init -p
echo "don't forget to add the tailwindcss import to your index.css file"
echo "@tailwind base;"
echo "@tailwind components;"
echo "@tailwind utilities;"
echo "tailwind docs: https://tailwindcss.com/docs/guides/vite"