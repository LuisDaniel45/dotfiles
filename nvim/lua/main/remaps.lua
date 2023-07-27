vim.g.mapleader = " "
vim.keymap.set("i", "jk", "<esc>")


--change windows 
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")

--create windows
vim.keymap.set('n', '<leader>h', function ()
vim.cmd [[ split ]]
end)
vim.keymap.set('n', '<leader>v', function ()
vim.cmd [[ vsplit ]]
end)

--open terminal 
-- vim.keymap.set("n", "<leader>sh", ":split <cr> <C-w>j :terminal <cr> i")

--get out of terminal mode
vim.keymap.set("t", "<leader>q", "<C-\\><C-n> <C-w>k")

-- open terminal 
vim.keymap.set("n", "<leader>sh", ":!exec st &> /dev/null & <cr>") 

--auto uppercase
vim.keymap.set('n', '<leader>u', 'vb<S-u>ea')

-- paste normally 
vim.keymap.set('x', '<leader>p', "\"_dp")

--visual move keymap
vim.keymap.set({'v', 'x'}, 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set({'v', 'x'}, 'K', ":m '<-2<CR>gv=gv")

--operator
vim.keymap.set('o', 'in(', ':<c-u>normal! f(vi(<cr>')
vim.keymap.set('o', 'il(', ':<c-u>normal! F)vi(<cr>')

--auto quote
vim.keymap.set('n', '<leader>"', 'viw<esc>a"<esc>bi"<esc>lel')

--clipboard copy  
vim.keymap.set({'n', 'v', 'x'}, '<leader>y', '"+y')

--adjust windows size 
vim.keymap.set('n', '<C-up>', '<C-W>+')
vim.keymap.set('n', '<C-down>', '<C-W>-')
vim.keymap.set('n', '<C-left>', '<C-W><')
vim.keymap.set('n', '<C-right>', '<C-W>>')

--replace word under cursor and all the similar ones
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.cmd [[ autocmd BufWritePost *.tex silent! execute "!pdflatex % >/dev/null 2>&1" | redraw! ]]


