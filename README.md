# My NeoVim Configuration

## Dependencies

### MacOS

```shell
brew install luarocks
```



## Plugins

- https://github.com/machakann/vim-highlightedyank
- https://github.com/mbbill/undotree
- https://github.com/nvim-tree/nvim-tree.lua
- https://github.com/rest-nvim/rest.nvim



## Python Configuration

```shell
cd ~/.config/nvim
pyenv install 3.12.1  # Optional
pyenv virtualenv 3.12.1 .py3nvim
pyenv activate .py3nvim
python3 -m pip install pynvim
pyenv which python
```
