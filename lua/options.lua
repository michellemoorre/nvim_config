local options = {
	backup = false,
	clipboard = "unnamedplus",
	mouse = "a",
	cursorline = true,
	number = true,
	relativenumber = false,
	wrap = false,
	scrolloff = 8,
	sidescrolloff = 8,
	expandtab = true,
	shiftwidth = 4,
	tabstop = 4,
    showmode = false,
    splitright = true,
    splitbelow = true,
    updatetime = 300
}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
  vim.opt[k] = v
end
