local dap = require('dap')

dap.adapters.lldb = {
    type = 'executable',
    command = '/usr/bin/lldb-vscode', -- adjust as needed, must be absolute path
    name = 'lldb'
}

-- dap.defaults.fallback.terminal_win_cmd = 'tabnew'
-- dap.defaults.fallback.force_external_terminal = true
-- dap.defaults.fallback.external_terminal = {
--     command = '/usr/local/bin/st';
--     args = {'-e'};
-- }

dap.configurations.cpp = {
  {
    name = 'Launch',
    type = 'lldb',
    request = 'launch',
    program = function()
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = '${workspaceFolder}',
    stopOnEntry = false,
    console = 'integratedTerminal',
    host = '127.0.0.1',
    port = 5679,

    args = {},

    -- 💀
    -- if you change `runInTerminal` to true, you might need to change the yama/ptrace_scope setting:
    --
    --    echo 0 | sudo tee /proc/sys/kernel/yama/ptrace_scope
    --
    -- Otherwise you might get the following error:
    --
    --    Error on launch: Failed to attach to the target process
    --
    -- But you should be aware of the implications:
    -- https://www.kernel.org/doc/html/latest/admin-guide/LSM/Yama.html
    runInTerminal = true,
  },
}

-- If you want to use this for Rust and C, add something like this:

dap.configurations.c = dap.configurations.cpp
dap.configurations.rust = dap.configurations.cpp

-- python debugger
require('dap-python').setup('~/.virtualenvs/debugpy/bin/python')

-- debugger ui 
local dapui= require("dapui")

dapui.setup()
dapui.config = {
    controls = {
      element = "repl",
      enabled = false 
    }
}

-- keymaps 
vim.keymap.set("n", "<leader>dt", function () 
    dapui.open(); 
    dap.continue() 
end)

vim.keymap.set("n", "<leader>dc", function () dapui.close() end) 
vim.keymap.set('n', '<leader>do', function() dap.step_over() end)
vim.keymap.set('n', '<leader>di', function() dap.step_into() end)
vim.keymap.set('n', '<leader>du', function() dap.step_out() end)
vim.keymap.set('n', '<leader>b', function() dap.toggle_breakpoint() end)


