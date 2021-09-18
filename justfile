set positional-arguments
set dotenv-load := true

# This PATH is from .env file, not from system envs
path := `grep PATH .env | cut -d '=' -f2`

# alias can't start from a digit
alias c2 := cmd2 

# make another variable from the previous
var1 := path + "___11"

default: (cmd3)

cmd1:
    @echo "Load '$PROJECT_NAME' from .env file"

cmd2:
    @echo "Here is PATH from .env file: {{path}}"

cmd3:
    echo {{var1}}

cmd4 value:
    echo '{value: $1}'

# use system envs params via $NAME
cmd5:
    echo $DB_BASE