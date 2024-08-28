# Shortcuts

## File Navigation
| Shortcut     | Mode           | Functionality/Description                              |
|--------------|----------------|-------------------------------------------------------|
| `<C-p>`      | Normal         | Find Git files                                         |
| `<leader>rn` | Normal         | Open file explorer                                     |
| `<leader>a`  | Normal         | Add file to Harpoon list                               |
| `<C-e>`      | Normal         | Toggle Harpoon quick menu                              |
| `<C-c>`      | Insert         | Exit insert mode                                       |
| `<C-i>`      | Normal/Insert  | Go back                                                |
| `<C-o>`      | Normal/Insert  | Go forward                                             |
| `<C-d>`           | Normal         | Scroll down and center the cursor                    |
| `<C-u>`           | Normal         | Scroll up and center the cursor                      |
<!-- | `<C-f>`           | Normal         | Scroll left and center the cursor  (telescope)                  |
| `<C-k>`           | Normal         | Scroll right and center the cursor  (telescope)        | -->
| `<C-h>`           | Normal         | Scroll left |
| `<C-l>`           | Normal         | Scroll right |

## Search
| Shortcut     | Mode   | Functionality/Description                                |
|--------------|--------|----------------------------------------------------------|
| `gs`         | Normal | List document symbols                                    |
| `gS`         | Normal | List workspace symbols                                   |
| `gm`         | Normal | List workspace methods                                   |
| `gf`         | Normal | List workspace functions                                 |
| `gc`         | Normal | List workspace structs                                   |
| `gv`         | Normal | List workspace variables                                 |
| `gD`         | Normal | View type definitions                                    |
| `gr`         | Normal | View references                                          |
| `gi`         | Normal | View implementations                                     |
| `<leader>vp` | Normal | Lists the results incl. previous picker                  |
| `<leader>fh` | Normal | Find recent files                                        |
| `<leader>ff` | Normal | Find files                                               |
| `<leader>fs` | Normal | Find symbols using live grep                             |
| `<leader>fw` | Normal | Find current word using grep                             |
| `<leader>ps` | Normal | Grep for input string                                    |
| `<leader>pWs`| Normal | Grep for WORD under cursor                               |
| `<leader>vh` | Normal | View help tags                                           |

## LSP
| Shortcut       | Mode   | Functionality/Description                                |
|----------------|--------|----------------------------------------------------------|
| `gh`           | Normal | Show hover info using LSP                                |
| `gd`           | Normal | Go to definition using LSP                               |
| `g.`           | Normal | Trigger code action using LSP                            |
| `rn`           | Normal | Rename using LSP                                         |
| `<leader>f`    | Normal | Format code using LSP                                    |
| `<leader>zig`  | Normal | Restart LSP                                              |
| `<C-h>`        | Insert | Show signature help using LSP                            |
| `<C-t>`        | Insert | Trigger completion using nvim-cmp                        |
| `<C-e>`        | Insert | Abort completion using nvim-cmp                          |
| `<CR>`         | Insert | Confirm completion using nvim-cmp                        |

## Diagnostics
| Shortcut       | Mode   | Functionality/Description                                |
|----------------|--------|----------------------------------------------------------|
| `<leader>vd`   | Normal | View diagnostics (severity: ERROR)                       |
| `]d`           | Normal | Go to next diagnostic                                    |
| `[d`           | Normal | Go to previous diagnostic                                |
| `<leader>tt`   | Normal | Toggle Trouble diagnostics filter (severity: ERROR)      |
| `]t`           | Normal | Go to next Trouble item                                  |
| `[t`           | Normal | Go to previous Trouble item                              |

## Git
| Shortcut       | Mode   | Functionality/Description                                |
|----------------|--------|----------------------------------------------------------|
| `<leader>vs`   | Normal | View status                                              |
| `<leader>vc`   | Normal | View commits                                             |
| `<leader>vb`   | Normal | View branches                                            |
| `<leader>hp`   | Normal | Preview hunk                                             |
| `<leader>hs`   | Normal | Stage hunk                                               |
| `<leader>hu`   | Normal | Undo hunk                                                |
| `[c`           | Normal | Jump to previous hunk                                    |
| `]c`           | Normal | Jump to next hunk                                        |
| `:Git diff`  | Normal | Show git differences                                      |
| `:Git log`   | Normal | Show git log                                             |
| `:Git blame` | Normal | Show git blame                                            |
| `:Git add`   | Normal | Add files to the git index                                |
| `:Git commit`| Normal | Commit changes in git                                     |
| `:Git mergetool` | Normal | Open git mergetool                                         |
| `:Git difftool`  | Normal | Open git difftool                                          |

## Editing
| Shortcut          | Mode           | Functionality/Description                            |
|-------------------|----------------|-----------------------------------------------------|
| `J`               | Visual         | Move selected line down                              |
| `K`               | Visual         | Move selected line up                                |
| `J`               | Normal         | Join lines and keep cursor position                  |
| `n`               | Normal         | Jump to next match and center the cursor             |
| `N`               | Normal         | Jump to previous match and center the cursor         |
| `<leader>s`       | Normal         | Replace word under cursor in the entire file         |
| `<leader>ee`      | Normal         | Insert an error handling block in Go code            |
| `<leader>p`       | Visual         | Paste without overwriting clipboard                  |
| `<leader>y`       | Normal/Visual  | Yank to clipboard                                    |
| `<leader>Y`       | Normal         | Yank line to clipboard                               |
| `<leader>d`       | Normal/Visual  | Delete without overwriting clipboard                 |
| `Q`               | Normal         | Disable ex mode                                      |
| `<leader><leader>`| Normal         | Source the current file                              |

## Basic Navigation
| Shortcut     | Mode   | Functionality/Description                                  |
|--------------|--------|-------------------------------------------------------------|
| `0`          | Normal | Move to the beginning of the line                          |
| `^`          | Normal | Move to the first non-whitespace character of the line      |
| `$`          | Normal | Move to the end of the line                                |
| `w`          | Normal | Move to the start of the next word                          |
| `b`          | Normal | Move to the start of the previous word                      |
| `e`          | Normal | Move to the end of the current word                         |
| `CTRL+o`     | Normal | Jump to the older position in the jump list                 |
| `CTRL+i`     | Normal | Jump to the newer position in the jump list                 |
| `gg`         | Normal | Move cursor to the first line                               |
| `#G`         | Normal | Move cursor to line # (replace # with line number)          |
| `GG`         | Normal | Move cursor to the last line                                |
| `CTRL+f`     | Normal | Move cursor forward by a full page                          |
| `CTRL+b`     | Normal | Move cursor backward by a full page                         |
| `CTRL+u`     | Normal | Move cursor up by half a page                              |
| `CTRL+d`     | Normal | Move cursor down by half a page                            |
| `zt`         | Normal | Move screen so cursor is at the top                         |
| `zb`         | Normal | Move screen so cursor is at the bottom                      |
| `zz`         | Normal | Center screen on cursor                                    |
| `f{char}`    | Normal | Move cursor to the next occurrence of {char}                |
| `F{char}`    | Normal | Move cursor to the previous occurrence of {char}            |
| `t{char}`    | Normal | Move cursor to before the next occurrence of {char}         |
| `;f`         | Normal | Repeat the last `f` command                                |
| `;F`         | Normal | Repeat the last `F` command                                |

## Editing Text
| Shortcut     | Mode   | Functionality/Description                                  |
|--------------|--------|-------------------------------------------------------------|
| `x`          | Normal | Delete the character under the cursor                      |
| `dw`         | Normal | Delete from the cursor to the start of the next word        |
| `dd`         | Normal | Delete the current line                                    |
| `d$`         | Normal | Delete from the cursor to the end of the line              |
| `D`          | Normal | Delete from the cursor to the end of the line              |
| `yw`         | Normal | Yank (copy) from the cursor to the start of the next word    |
| `yy`         | Normal | Yank the current line                                      |
| `y$`         | Normal | Yank from the cursor to the end of the line                |
| `p`          | Normal | Paste after the cursor                                     |
| `P`          | Normal | Paste before the cursor                                    |
| `u`          | Normal | Undo the last change                                       |
| `Ctrl+r`     | Normal | Redo the undone change                                     |
| `r<char>`    | Normal | Replace the character under the cursor with `<char>`       |
| `R`          | Normal | Enter replace mode                                        |
| `ci"`        | Normal | Change inside double quotes                                |
| `ci)`        | Normal | Change inside curved brackets                              |
| `ci}`        | Normal | Change inside curly brackets                               |

## Insert Mode
| Shortcut     | Mode   | Functionality/Description                                  |
|--------------|--------|-------------------------------------------------------------|
| `i`          | Insert | Insert before the cursor                                  |
| `I`          | Insert | Insert at the beginning of the line                        |
| `a`          | Insert | Append after the cursor                                    |
| `A`          | Insert | Append at the end of the line                              |
| `o`          | Insert | Open a new line below the current line                     |
| `O`          | Insert | Open a new line above the current line                     |
| `Esc`        | Insert | Exit insert mode                                          |

## Visual Mode
| Shortcut     | Mode   | Functionality/Description                                  |
|--------------|--------|-------------------------------------------------------------|
| `v`          | Visual | Start visual mode (select characters)                      |
| `V`          | Visual | Start visual line mode (select lines)                      |
| `Ctrl+v`     | Visual | Start visual block mode (select block of text)             |
| `y`          | Visual | Yank (copy) the selected text                              |
| `d`          | Visual | Delete the selected text                                  |
| `~`          | Visual | Toggle case of the selected text                          |


## Treesitter
| Shortcut     | Mode   | Functionality/Description                                  |
|--------------|--------|-------------------------------------------------------------|
| `]x`         | Normal | Select a smaller syntax node                              |
| `[x`         | Normal | Select a larger syntax node                               |

## Search and Replace
| Shortcut     | Mode   | Functionality/Description                                  |
|--------------|--------|-------------------------------------------------------------|
| `/pattern`   | Normal | Search forward for `pattern`                              |
| `?pattern`   | Normal | Search backward for `pattern`                             |
| `n`          | Normal | Repeat the search in the forward direction                 |
| `N`          | Normal | Repeat the search in the backward direction                |
| `:%s/old/new/g` | Normal | Replace all occurrences of `old` with `new` in the file   |
| `:s/old/new/g`  | Normal | Replace all occurrences of `old` with `new` in the line    |

## File Operations
| Shortcut     | Mode   | Functionality/Description                                  |
|--------------|--------|-------------------------------------------------------------|
| `:w`         | Normal | Save the current file                                     |
| `:q`         | Normal | Quit Vim                                                  |
| `:wq`        | Normal | Save and quit Vim                                         |
| `:q!`        | Normal | Quit without saving                                       |
| `:e filename`| Normal | Open `filename`                                           |
| `:sav filename` | Normal | Save as `filename`                                        |

## Miscellaneous
| Shortcut     | Mode   | Functionality/Description                                  |
|--------------|--------|-------------------------------------------------------------|
| `Ctrl+o`     | Normal | Jump to the previous location                             |
| `Ctrl+i`     | Normal | Jump to the next location                                |
| `.`          | Normal | Repeat the last command                                  |
| `:%y+`       | Normal | Yank the entire file to the clipboard                     |

## Windows Command Mode
| Shortcut            | Mode   | Functionality/Description                                   |
|---------------------|--------|-------------------------------------------------------------|
| `Ctrl+w R`          | Normal | Rotate windows up/left                                      |
| `Ctrl+w r`          | Normal | Rotate windows down/right                                   |
| `Ctrl+w L`          | Normal | Move the current window to the far right                    |
| `Ctrl+w H`          | Normal | Move the current window to the far left                     |
| `Ctrl+w J`          | Normal | Move the current window to the very bottom                  |
| `Ctrl+w K`          | Normal | Move the current window to the very top                     |
| `:help window-moving`| Normal | More information on window-moving commands                 |
| `:tabnew`           | Normal | Open a new tab                                              |
| `:tabclose`         | Normal | Close the current tab                                       |
| `:tabn`             | Normal | Move to the next tab                                        |
| `:tabp`             | Normal | Move to the previous tab                                    |
| `gt`                | Normal | Move to the next tab                                        |
| `gT`                | Normal | Move to the previous tab                                    |
| `:tabv`            | Normal | Split the current tab vertically                             |
| `:tabh`            | Normal | Split the current tab horizontally                           |