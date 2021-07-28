# This PATH is from .env file, not from system env
path := `grep PATH .env | cut -d '=' -f2`

# alias can't start from a digit
alias c2 := cmd2 

# make another variable from the previous
var1 := path + "___11"

cmd1:
    @echo "Load '$PROJECT_NAME' from .env file"

cmd2:
    @echo "Here is PATH from .env file: {{path}}"

cmd3:
    echo {{var1}}