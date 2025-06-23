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
>
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
├── lua
│  ├── plugins                -- Plugin configurations
│  ├── helpers
│  │  └── globals.lua         -- Global variables (aliases)
│  └── settings.lua           -- Settings for neovim
└── README.md
```

## How does lazy.lua load plugins

Every file inthe `lua/plugins` directory represents a separate plugin configuration, and is automatically loaded by [lazy.nvim](https://github.com/folke/lazy.nvim). The `init.lua` file (or your main config) tells lazy.nvim to scan this folder and load each file as a plugin specification.

This means you can add, remove, or edit plugin configs by simply creating or editing files in `lua/plugins/`. Each file should return a [Lua table](https://www.lua.org/pil/2.5.html) describing the plugin and its options (see the examples in this repo). lazy.nvim will handle loading, dependencies, and lazy-loading based on the options you specify (like `event`, `keys`, `cmd`, etc).

## Where to put keybindings
If you have some global keybindings, you should put them into `lua/keybindings.lua`. This file is intended to be the central place for all your custom key mappings that are not specific to a single plugin. Keeping your keybindings organized in one place makes it easier to manage, update, or troubleshoot them as your configuration grows.

When defining a new shortcut, it's highly recommended to use [which-key.nvim](https://github.com/folke/which-key.nvim) (often referred to as `wk` in configs). which-key provides a helpful popup that shows available keybindings in context, making it much easier to discover and remember your shortcuts. You can register keybindings with descriptions, group related mappings, and even set up leader-key menus for a more intuitive workflow.

If you want to add plugin-specific keybindings, you can also define them directly in the corresponding plugin config file inside `lua/plugins/`, using the `keys` field in the plugin spec table. However, for global or cross-plugin shortcuts, `lua/keybindings.lua` is the best place.

> [!NOTE]
> **Remember**: Consistency and documentation are key! Add descriptions to your keybindings so which-key can display them, and keep related mappings grouped together for clarity.

# Packed Plugins

- [lazy.nvim](https://github.com/folke/lazy.nvim)
- [mason.nvim](https://github.com/williamboman/mason.nvim)
- [which-key.nvim](https://github.com/folke/which-key.nvim)
- [telescope](https://github.com/nvim-telescope/telescope.nvim)
- [cmp](https://github.com/hrsh7th/nvim-cmp)
- [lspkind](https://github.com/onsails/lspkind.nvim)
- [Git Signs](https://github.com/lewis6991/gitsigns.nvim)
- [trouble.nvim](https://github.com/folke/trouble.nvim)
- [Tree Sitter](https://github.com/tree-sitter/tree-sitter)
- [mini.nvim](https://github.com/echasnovski/mini.nvim)

## Opionated standards

- Use lazy.nvim as a plugin manager, it is fast, simple and has a nice user interface;
- Use Mason with mason-lspconfig to manage LSP servers;
- Use which-key to handle all keyboard shortcuts because it's easy and fun to use;
- Use mini.files as your main explorer because it is fast and minimalistic;
- Use cmp.nvim with lspkind as a completion manager as it provides great source support for completion;
- Use gitsigns to work with git stashes because it gives good highlights;
- Use Trouble nvim as an alternative to quicklist because it has a nice interface;
- Use Treesitter (actually standard) to search for files, content and other pickers;
- Use your favorite theme, you can comment Vitesse, there are several configs for different themes;
- Use mini.nvim for editor utilities because mini.nvim provides a great experience and is as minimalistic as possible;

## 💡 Tips

- Rewrite it from scratch (it’s a template, cmon), you can replace each plugin with your favorite one;
- RTFM, each plugin has a comment with a link to the repository;
- Don't be afraid to break something. Remember: you can fork this repo as much as you like, just don't be afraid to break it;

[![Star History Chart](https://api.star-history.com/svg?repos=tokiory/neovim-boilerplate&type=Date)](https://star-history.com/#tokiory/neovim-boilerplate&Date)
