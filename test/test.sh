# Bomb if anything fails.
set -e

# Check each shell.
function check_shell
{
    local shell_command="$1"
    if which "$shell_command" >> /dev/null; then
        echo "test passed: '$shell_command' found";
    else
        echo "test failed: '$shell_command' not found";
        exit 1
    fi
}

echo "Checking for shells..."
check_shell "sh"
check_shell "csh"
check_shell "tcsh"
check_shell "bash"
check_shell "ksh"
check_shell "fish"
check_shell "zsh"
check_shell "ash"
check_shell "dash"
