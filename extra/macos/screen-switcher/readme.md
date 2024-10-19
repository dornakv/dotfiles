This uses the [displayplacer](https://github.com/jakehilborn/displayplacer) utility to control macos screen arrangement (alternative to linux's XRandR)

run
```sh
chmod +x display_switcher.command
```
to make the file executable, than move to dock, so it can be run easily.

The file has `.command` extension, in order to be launched using macOS terminal, instead of kitty or another terminal emulator.

To make sure the terminal window does not stay open after the command is run, open `terminal.app`, go to `settings` -> `Profiles` -> `Shell` -> `When the shell exits:` `Close if sthe shell exited cleanly`

