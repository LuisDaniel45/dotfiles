vim.opt.termguicolors = true
require("bufferline").setup{
	options = {
		mode = 'tabs',
		numbers = "none",
		close_command = "bdelete! %d",
		right_mouse_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
		indicator = {
			icon = '▎', -- this should be omitted if indicator style is not 'icon'
			style = 'icon',
		},	
		offsets = {
			{
				filetype = "NvimTree",
				text = "File Explorer",
				text_align =  "center",
				separator = true
			}
		}
	}
}
