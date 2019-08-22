#!/usr/bin/env bash
_helpme_completions() {

    if [ "${#COMP_WORDS[@]}" != "2" ]; then
        return
    fi
    
    COMPREPLY=($(compgen -W "$(/usr/local/bin/helpme-completions)" "${COMP_WORDS[1]}"))
}

complete -F _helpme_completions helpme
complete -F _helpme_completions helpme-edit
complete -F _helpme_completions helpme-delete