function __fish_direnv_directory_or_envrc
    printf "%s\n" (__fish_complete_directories)
    set f (commandline -ct)".envrc"
    test -f "$f" && printf "%s\n" $f
end

complete -c direnv -l help -d "shows this help"
complete -c direnv -l version -d "prints the version"

complete -c direnv -xn "__fish_use_subcommand" -a allow -d "Grants direnv to load the given .envrc"
complete -c direnv -xn "__fish_use_subcommand" -a deny -d "Revokes the authorization of a given .envrc"
complete -c direnv -xn "__fish_use_subcommand" -a edit -d "Opens PATH_TO_RC or the current .envrc into an \$EDITOR and allow the file to be loaded afterwards."
complete -c direnv -xn "__fish_use_subcommand" -a exec -d "Executes a command after loading the first .envrc found in DIR"
complete -c direnv -xn "__fish_use_subcommand" -a fetchurl -d "Fetches a given URL into direnv's CAS"
complete -c direnv -xn "__fish_use_subcommand" -a help -d "shows this help"
complete -c direnv -xn "__fish_use_subcommand" -a hook -d "Used to setup the shell hook"
complete -c direnv -xn "__fish_use_subcommand" -a prune -d "removes old allowed files"
complete -c direnv -xn "__fish_use_subcommand" -a reload -d "triggers an env reload"
complete -c direnv -xn "__fish_use_subcommand" -a status -d "prints some debug status information"
complete -c direnv -xn "__fish_use_subcommand" -a stdlib -d "Displays the stdlib available in the .envrc execution context"
complete -c direnv -xn "__fish_use_subcommand" -a version -d "prints the version (2.27.0) or checks that direnv is older than VERSION_AT_LEAST."

complete -c direnv -xn "__fish_seen_subcommand_from allow deny edit" \
    -a "(__fish_direnv_directory_or_envrc)"
complete -c direnv -xn "__fish_seen_subcommand_from hook" \
    -a "bash elvish fish tcsh zsh"
