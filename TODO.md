# To-Do List

## DB Cloning
:)


## Package Fetching
- Allow adding files to download to list
    - Allow printing that list
- Files can be added as explicit or as a dependency, both by user
- Files can be added w/ {-U --upgrade} for use with makepkg & stuff
    - Will need to be noted in pkglist so they can be manually added later
    - Either copy or hardlink pkg file to cache
        - copying is probably more stable, so maybe have a flag for hardlinks
- The installation list will be used for both downloading and final installation

- Flag to only add an operation to pkglist (-w ?)
- Flag to bring cache & db up to date with pkglist

- Need to use `fakeroot` and `--disable-sandbox`


## Package Installation
- Copying the files to the offline system's pacman database should start by checking for potential clobbers, and exit if a conflict is found
    - A flag can be set to overwrite or to skip that file


## Other
- Command-line argument parsing
- Test cases!
