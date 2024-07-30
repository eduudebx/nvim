-- Configuraciones básicas
 
vim.g.mapleader = " "

vim.wo.relativenumber = true
vim.wo.number = true

vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeToggle)
vim.keymap.set("n", "<leader>1", vim.cmd.bfirst) -- Elegir el primer buffer - "archivos abiertos".
vim.keymap.set("n", "<leader>0", vim.cmd.blast) -- Último buffer.
vim.keymap.set("n", "<Tab>", vim.cmd.bnext) -- Buffer siguiente.
vim.keymap.set("n", "<S-Tab>", vim.cmd.bprevious) -- Buffer anterior.

require("base.plugins.lazy")
