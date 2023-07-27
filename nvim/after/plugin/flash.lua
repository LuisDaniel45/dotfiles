local flash = require("flash")

-- jump to word 
vim.keymap.set("n", 'ff', function ()
    flash.jump()
end)


-- highlight word
vim.keymap.set("n", 'tj', function ()
    flash.treesitter()
end)
