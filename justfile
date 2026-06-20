
[default]
[private]
list:
    @just --list


# Concatenate the files in 'src/' to a single file
build outputfile="pacoff":
    #!/usr/bin/bash
    cat - $(find src/ -type f | sort) <<<'#!/usr/bin/bash' > '{{outputfile}}'
    chmod +x '{{outputfile}}'
    echo "Printed $(grep -c '' {{outputfile}}) lines to '{{outputfile}}'"
