# set up color variables
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
CYAN='\033[0;36m'
PURPLE='\033[0;35m'
LIGHT_GRAY='\033[0;37m'
BLUE='\033[0;34m'
BLACK='\033[0;30m'
WHITE='\033[0;97m'
NC='\033[0m' # No Color


# echo in color

echo -e "${RED}This is red text${NC}"

echo -e "${GREEN}This is green text${NC}"

echo -e "${YELLOW}This is yellow text${NC}"

echo -e "${CYAN}This is cyan text${NC}"

read -p "Press enter to exit"