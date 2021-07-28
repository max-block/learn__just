# This PATH is from .env file, not from system env
PATH := `grep PATH .env | cut -d '=' -f2`

# alias can't start from a digit
alias c2 := cmd2 

cmd1:
    @echo "Load '$PROJECT_NAME' from .env file"

cmd2:
    @echo "Here is PATH from .env file: {{PATH}}"