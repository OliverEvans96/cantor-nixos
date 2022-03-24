# Cantor on NixOS

Cantor is a KDE frontend for computational notebooks.

`u/Orlando--` [posted in the NixOS subreddit](https://www.reddit.com/r/NixOS/comments/tl4hm7/cantor_on_nixos/) asking for help hooking up backends to the cantor frontend, which they managed to compile successfully.

This is my attempt to pitch in - I've mainly added `shell.nix` that pulls in the frontend together with several backends.
Unfortunately, it's not working for me with Sage for some reason, but the others seem fine.

## Instructions

Just run
```
nix-shell
```

and then
```
cantor
```

