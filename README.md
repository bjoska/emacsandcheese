# Emacs and Cheese

This `emacs.d` was created by @piisalie and @bjoska as a joint venture after discussion on twitter.

The initial commits where made while pairing, as time passes more additions will be made through pull requests.

## Index

- [Index](#index)
- [Target users](#target-users)
- [Getting started](#getting-started)
- [Dependencies](#dependencies)
- [Specific Keyboard Shortcuts](#specific-keyboard-shortcuts)
- [Local changes](#local-changes)
- [Themes](#themes)
- [TODO](#todo)
- [Contribute](#contribute)

## Target users

As we are both Ruby developers this config will be most useful to programmers working with said language and environment.

## Getting started

First clone this repo to a location on your system(see below for alternatives).

If you do not feel like keeping this in a separate place but want it in the same place as where you would keep your usual `.emacs.d` directory, then do the following in your home directory `git clone https://github.com/bjoska/emacsandcheese.git .emacs.d` or clone it to a separate directory by running `git clone https://github.com/bjoska/emacsandcheese.git` and then symlink it like this `ln -snf <this directory> ~/.emacs.d/`.

After this bit is done make sure you have Cask(see below for more instructions on this) installed and then enter the directory and run `cask install`. You should now have everything needed installed. Start emacs as you would normally and all the dependencies should be in place.

Have fun and let us know if you run into any issues!

## Dependencies

This configuration utilizes [Pallet](https://github.com/rdallasgray/pallet) and [Cask](https://github.com/cask/cask) to bundle the needed packages.

## Specific Keyboard Shortcuts

### Multiple cursors

- `C-c m l` - multiple cursors edit line
- `C-c m n` - mark next like this
- `C-c m p` - mark previous like this
- `C-c m a` - mark all like this

### Ruby mode

- `C-c r l` - rspec-compile-on-line
- `C-c r f` - rspec-compile-file
- `C-c r p` - rspec-compile-project
- `C-c r P` - minitest-compile-project
- `C-c r F` - minitest-compile-file

### Undo tree

- `C-x u` - view undo-tree

### Web mode

Keyboard shortcuts for web mode can be found here:
[WebMode](http://web-mode.org/)

### Coffee mode

Keyboard shortcuts for coffee mode can be found here:
[CoffeeMode](https://github.com/defunkt/coffee-mode#default-key-bindings)

### Hippie expand

- `<escape>` - expand in place

### Scroll Other Window

- `C-M-v` - Scroll other window up
- `C-M-m` - Scroll other window down

### Move line up and down.

- `M-S up` - Move line up
- `M-S down` - Move line down

### Suspend and kill terminal

- `C-c C-e` - Suspend frame
- `C-c C-q` - Kill Terminal

### Duck Duck Go

- `C-c C-s` - The current region or query

### Omniref

- `C-c C-o` - The current region or query

### Indentation and cleaning

- `C-c C-i` - Indent selected region or whole buffer
- `C-c C-n` - Indent and clean the current buffer

### Org mode

Configuration to enable windmove added.

### Magit

More information can be found [here](https://github.com/magit/magit)

### Deft Notes

Deft mode will use org-mode as the default mode.

All notes will be stored in `<your-emacs-dir>/deft-notes/`, you would
probably want to change this to something that syncs between systems.
You can change this setting by setting the following in your local configuration:
`(setq deft-directory "~/your/notes/directory/")`

- `f8` - activate deft

### VLF-mode

More information can be found [here](https://github.com/m00natic/vlfi)

Notable key commands:

- `C-c C-v +` - Increase batch size by a factor of 2
- `C-c C-v -` - Decrease batch size by a factor of 2
- `C-c C-v n` - move batch by batch(`C-v` works as well)
- `C-c C-v p` - move batch by batch(M-v` works as well)
- `C-c C-v SPC` - display batch starting from current point
- `C-c C-v [` - beginning of file
- `C-c C-v ]` - end of file
- `C-c C-v s` - search forward
- `C-c C-v r` - search backwards

Notable commands:

- `M-x vlf-set-batch-size` - To set the batch size to process.


## Local changes

When you add your own local changes that you do not really want to add to the repo, these should go in the local_config directory.
`./local_config/<a name of a file>`

## Themes

The configuration comes packagede with the following themes and theme collections:
- sanityinc-tomorrow - includes day, night, eighties, blue and a few more
- sanityinc-solarized - includes dark and light (not terminal mode friendly)
- ample-zen - a simple theme similar to sanityinc-tomorrow-eighties

To change theme add a `load-theme` to your own personal config.

**Example**

```elisp
(load-theme 'sanityinc-solarized-dark t)
```

## TODO

- [Helm](https://github.com/emacs-helm/helm) (and [Helm-Projectile](https://github.com/bbatsov/projectile#helm-integration))
- Robe mode
- Rubocop?
- Textmate.el
- Configuration for Org mode
- Swank.js
- Cleanup the bottom status bar with a nicer look.

## Contribute

If you would like to contribute feel free.

Follow the following process:

- fork the repo
- add your feature in a new branch
- create a pull request
