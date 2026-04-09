-- make number lines default
vim.opt.number = true

-- changes tab spacing
vim.opt.tabstop=4
vim.opt.shiftwidth=4
vim.opt.expandtab=true
vim.opt.autoindent=true
vim.opt.smartindent=true


-- when editing binary files
-- vim.opt.binary=true

-- :cd defaults to home dir
vim.opt.cdhome=true

-- cmd config
vim.opt.cmdheight=3
vim.opt.cmdwinheight=3

-- if buffer is unsaved when trying to quit it will prompt to save
vim.opt.confirm=true

-- changes which program the command :make uses
-- vim.opt.makeprg="mingw32-make"



-- ruler options
vim.opt.ruler=true
-- vim.opt.rulerformat

vim.opt.clipboard:append("unnamedplus")
vim.opt.hlsearch=true
vim.opt.mouse = "a"

