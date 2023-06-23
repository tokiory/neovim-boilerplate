![image](https://user-images.githubusercontent.com/101672047/235722220-dbf567c4-4e8f-4bb1-8f9a-1d6a221cda33.png)

Boilerplate for Neovim. A simple, well-documented template to start building your own configuration. I've created a lot of configurations before neovim introduced Lua. From time to time I saw repeating patterns: creating directories, importing the same files, and much more. I decided to create a boilerplate so that when creating a new configuration, I didn’t have to write everything from the very beginning.

Also, this boilerplate will be useful for beginners who do not know where to start writing their configuration. All files are well documented, at the top of each file you can find a frontmatter with the necessary data.

## Use it
You can use this template with the following command:

```bash
[ -d $HOME/.config/nvim ] && mv $HOME/.config/{nvim,nvim.old}; \
    git clone https://github.com/tokiory/neovim-boilerplate $HOME/.config/nvim
```

# Structure

```
.
├── init.lua                  -- Entry point
├── init.sh                   -- Script for installation side-software (aka packer)
│
├── lua
│  ├── extensions             -- Plugin configurations
│  │
│  ├── helpers
│  │  ├── globals.lua         -- Global variables (aliases)
│  │  └── keyboard.lua        -- Keyboard helper functions
│  │
│  ├── keybindings.lua        -- Keyboard mappings
│  ├── plugins.lua            -- Plugin initialization via Packer
│  └── settings.lua           -- Settings for neovim
└── README.md
```

# Packed Plugins

- [lazy.nvim](https://github.com/folke/lazy.nvim)
- [mason.nvim](https://github.com/williamboman/mason.nvim)
- [neo-tree](https://github.com/nvim-tree/nvim-tree.lua)
- [telescope](https://github.com/nvim-telescope/telescope.nvim)
- [cmp](https://github.com/hrsh7th/nvim-cmp)
- [lspkind](https://github.com/onsails/lspkind.nvim)
- [Git Signs](https://github.com/lewis6991/gitsigns.nvim)
- [trouble.nvim](https://github.com/folke/trouble.nvim)
- [Tree Sitter](https://github.com/tree-sitter/tree-sitter)
- [sonokai](https://github.com/sainnhe/sonokai)
