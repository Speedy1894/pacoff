# To-Do List

## DB Cloning
- Copy package databases from offline system


## Package Fetching
- Allow adding files to download to list
    - Allow printing that list
- Files can be added as explicit or as a dependency, both by user

- By default, downloading one package will not download the whole list -- a flag needs to be explicitly set for that

- The installation list will be used for both downloading and final installation

- Needs to also get pacman.conf & gpgdir from original device, since it may have different repos


## Package Installation
- Copying the files to the offline system's pacman database should start by checking for potential clobbers, and exit if a conflict is found
    - A flag can be set to overwrite or to skip that file


## Other
- Command-line argument parsing
- Think about a better name for copying database and injecting packages than "install"
