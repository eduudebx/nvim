-- Configuraciones básicas
 
vim.g.mapleader = " "

vim.wo.relativenumber = true
vim.wo.number = true

vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeToggle)
vim.keymap.set("n", "<leader>1", vim.cmd.bfirst) -- Elegir el primer buffer - "archivos abiertos".
vim.keymap.set("n", "<leader>0", vim.cmd.blast) -- Último buffer.
vim.keymap.set("n", "<Tab>", vim.cmd.bnext) -- Buffer siguiente.
vim.keymap.set("n", "<S-Tab>", vim.cmd.bprevious) -- Buffer anterior.

vim.opt.tabstop = 4  -- Número de espacios de una tabulación
vim.opt.softtabstop = 4  -- Número de espacios que se usan para la tecla Tab
vim.opt.shiftwidth = 4  -- Número de espacios para el autoindent
vim.opt.expandtab = true -- Usa espacios en lugar de tabulaciones 

vim.opt.textwidth = 0        -- Desactiva el límite de longitud de línea (0 significa sin límite)
vim.opt.wrap = false         -- Desactiva el ajuste de líneas (evita que Neovim envuelva automáticamente las líneas largas)

require("base.plugins.lazy")
