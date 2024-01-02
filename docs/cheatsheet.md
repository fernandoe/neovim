# cheatsheet

## nvim

### general

| mappings    | Description             |
|-------------|-------------------------|
| `<leader>h` | Clear search highlights |



### treesj - https://github.com/Wansmer/treesj

| mappings    | Description                                                                     |
|-------------|---------------------------------------------------------------------------------|
| `<leader>m` | toggle node under cursor (split if one-line and join if multiline) `:TSJToggle` |


### nvim-bqf - quickfix - https://github.com/kevinhwang91/nvim-bqf

| mappings   | Description                                                      |
|------------|------------------------------------------------------------------|
| `:copen`   | open quickfix                                                    |
| `:cclose`  | close quickfix                                                   |
| `<Ctrl>+q` | in telescope, send the results to the quickfix list              |
| `<Tab>`    | in quickfix window, select items in the list                     |
| `zn`       | in quickfix window, create a new list with the selected items    |
| `zN`       | in quickfix window, create a new list without the selected items |


### Comment.nvim - https://github.com/numToStr/Comment.nvim

- NORMAL mode

| mappings            | Description                                                        |
|---------------------|--------------------------------------------------------------------|
| `gcc`               | Toggles the current line using linewise comment                    |
| `gbc`               | Toggles the current line using blockwise comment                   |
| `[count]gcc`        | Toggles the number of line given as a prefix-count using linewise  |
| `[count]gbc`        | Toggles the number of line given as a prefix-count using blockwise |
| `gc[count]{motion}` | (Op-pending) Toggles the region using linewise comment             |
| `gb[count]{motion}` | (Op-pending) Toggles the region using blockwise comment            |
| `gco`               | Insert comment to the next line and enters INSERT mode             |
| `gcO`               | Insert comment to the previous line and enters INSERT mode         |
| `gcA`               | Insert comment to end of the current line and enters INSERT mode   |

- VISUAL mode

| mappings | Description                                |
|----------|--------------------------------------------|
| `gc`     | Toggles the region using linewise comment  |
| `gb`     | Toggles the region using blockwise comment |


### vim-markdown - https://github.com/preservim/vim-markdown

| mappings       | Description                       |
|----------------|-----------------------------------|
| `:TableFormat` | Format the table under the cursor |



### vim-surround - https://github.com/tpope/vim-surround

| mappings | Description        |
|----------|--------------------|
| `ys`     | you surround/add   |
| `cs`     | change surrounding |
| `ds`     | delete surrounding |


### rest.vim - https://github.com/rest-nvim/rest.nvim

- Reference: https://github.com/rest-nvim/rest.nvim/tree/main/tests

| mappings    | Description          |
|-------------|----------------------|
| `<leader>r` | Run rest API         |
| `<leader>p` | Run the preview      |
| `<leader>l` | Run the last command |


### nvim-tree - https://github.com/nvim-tree/nvim-tree.lua

| mappings | Description |
|----------|-------------|
| `g?`     | Help        |
| `c`      | Copy file   |
| `p`      | Paste file  |


### undotree - https://github.com/mbbill/undotree

| mappings          | Description                    |
|-------------------|--------------------------------|
| `:UndotreeToggle` | Close/Open the undotree panel  |
| `<leader>u`       | Close/Open the undotree panel  |
| `u`               | Undo change                    |
| `<C-r>`           | Redo changes which were undone |


## DAP

| mappings          | Description                    |
|-------------------|--------------------------------|
| `<leader>b`       | Add/Remove break point         |


## tmux


| Keys             | Description                                     |
|------------------|-------------------------------------------------|
| `<prefix>+I`     | (capital i, as in Install) to fetch the plugin  |
| `<prefix>+U`     | updates plugin(s)                               |
| `<leader>s`      | List all sessions                               |
| `<leader>d`      | Detach the current session                      |
| `<leader>%`      | Panes: Split vertically                         |
| `<leader>"`      | Panes: Split horizontally                       |
| `<leader>z`      | Panes: Maximize/Minimize pane                   |
| `<leader>o`      | Panes: Cycle focus                              |
| `<leader>Arrows` | Panes: Cycle pane focus                         |
| `<leader>x`      | Panes: Close pane                               |
| `<leader>c`      | Windows: New window                             |
| `<leader>,`      | Windows: Rename window                          |
| `<leader>n`      | Windows: Cycle focus                            |
| `<leader>&`      | Windows: Close focus                            |
| `<leader>$`      | Rename session                                  |
