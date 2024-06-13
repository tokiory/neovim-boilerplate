![image](https://user-images.githubusercontent.com/101672047/235722220-dbf567c4-4e8f-4bb1-8f9a-1d6a221cda33.png)

Boilerplate for Neovim. A simple, well-documented template to start building your own configuration. I've created a lot of configurations before neovim introduced Lua. From time to time I saw repeating patterns: creating directories, importing the same files, and much more. I decided to create a boilerplate so that when creating a new configuration, I didn’t have to write everything from the very beginning.

Also, this boilerplate will be useful for beginners who do not know where to start writing their configuration. All files are well documented, at the top of each file you can find a frontmatter with the necessary data.

## Use it
You can use this template with the following command:

```bash
[ -d $HOME/.config/nvim ] && mv $HOME/.config/{nvim,nvim.old}; \
    git clone https://github.com/tokiory/neovim-boilerplate $HOME/.config/nvim
```

> [!WARNING]
> Before using this configuration you will need NodeJS and Go (for Nodejs and Go LSP).
> You can install it with your favorite package manager, but, I recommend using asdf.
> You can get it [from this repo](https://github.com/asdf-vm/asdf).
> After installation you will need to enter the following commands:
> ```bash
> asdf plugin add nodejs
> asdf plugin add golang
> asdf install golang <any version from 1.20>
> asdf install nodejs <any version from 16>
> ```


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
- [which-key.nvim](https://github.com/folke/which-key.nvim)
- [neo-tree](https://github.com/nvim-tree/nvim-tree.lua) (*optional, you should uncomment it*)
- [telescope](https://github.com/nvim-telescope/telescope.nvim)
- [cmp](https://github.com/hrsh7th/nvim-cmp)
- [lspkind](https://github.com/onsails/lspkind.nvim)
- [Git Signs](https://github.com/lewis6991/gitsigns.nvim)
- [trouble.nvim](https://github.com/folke/trouble.nvim)
- [Tree Sitter](https://github.com/tree-sitter/tree-sitter)
- [vitesse](https://github.com/2nthony/vitesse.nvim)
- [mini.nvim](https://github.com/echasnovski/mini.nvim)

## Opionated standards
- Use lazy.nvim as a plugin manager, it is fast, simple and has a nice user interface;
- Use Mason with mason-lspconfig to manage LSP servers;
- Use which-key to handle all keyboard shortcuts because it's easy and fun to use;
- Use mini.files as your main explorer because it is fast and minimalistic;
- You can use the standard (de facto) NeoTree as the main explorer, just uncomment it and comment out mini.files;
- Use cmp.nvim with lspkind as a completion manager as it provides great source support for completion;
- Use gitsigns to work with git stashes because it gives good highlights;
- Use Trouble nvim as an alternative to quicklist because it has a nice interface;
- Use Treesitter (actually standard) to search for files, content and other pickers;
- Use your favorite theme, you can comment Vitesse, there are several configs for different themes;
- Use mini.nvim for editor utilities because mini.nvim provides a great experience and is as minimalistic as possible;
