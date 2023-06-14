@REM this .bat file will create a new project folder in C:\Users\Tedane Blake\Documents\QuickJSProjects and open it in VS Code

@REM cd to C:\Users\Tedane Blake\Documents\QuickJSProjects
if not exist C:\Users\Tedane Blake\Documents\QuickJSProjects mkdir C:\Users\Tedane Blake\Documents\QuickJSProjects
cd C:\Users\Tedane Blake\Documents\QuickJSProjects

@REM create a new project folder
set /p projectname=Enter project name:
if not exist %projectname% mkdir %projectname%
cd %projectname%

@REM create a new README.md file
echo # %projectname% > README.md

@REM  ask what type of js project to create: node, browser(with html), or just js
set /p projecttype=Enter project type:
if %projecttype%==node goto node
if %projecttype%==browser goto browser
if %projecttype%==js goto js

:node 
@REM initialize npm
npm init -y

@REM create a new index.js file
echo console.log('hello world') > index.js

echo "node project created"

@REM open the project in VS Code
code .

goto end

:browser
@REM create a new index.html file
echo "<!DOCTYPE html>
<html lang='en'>
<head>
    <meta charset='UTF-8'>
    <meta name='viewport' content='width=device-width, initial-scale=1.0'>
    <title>%projectname%</title>
</head>
<body>
    <script src='index.js'></script>
</body>
</html>" > index.html

@REM create a new index.js file
echo "console.log('hello world')" > index.js
echo "browser project created"

@REM open the project in VS Code
code .

goto end

:js
@REM create a new index.js file
echo "console.log('hello world')" > index.js
echo "js project created"

@REM open the project in VS Code
code .

