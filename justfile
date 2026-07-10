set shell := ["bash", "-uc"]

[default]
[private]
list:
    @just --list


# Concatenate the files in 'src/' to a single file
@build outputfile="pacoff":
    cat - ${ find src/ -type f | sort;} <<<'#!/usr/bin/bash' > '{{outputfile}}'
    chmod +x '{{outputfile}}'
    echo "Printed ${ grep -c '' '{{outputfile}}';} lines to '{{outputfile}}'"

# Get the location of all occurences of a string within 'src/'
@find regexp:
    cd src/; grep --color=always --with-filename --line-number --regexp='{{regexp}}' * | sed 's/[[:space:]][[:space:]]\+//'
