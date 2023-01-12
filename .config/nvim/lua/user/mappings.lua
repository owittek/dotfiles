local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

return {
  n = {
    ["<leader>xx"] = { "<cmd>TroubleToggle<cr>", desc = "Toggle Trouble" },
    ["<leader>xw"] = { "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "Workspace Diagnostics" },
    ["<leader>xd"] = { "<cmd>TroubleToggle document_diagnostics<cr>", desc = "Document Diagnostics" },
    ["<leader>xl"] = { "<cmd>TroubleToggle loclist<cr>", desc = "Location List" },
    ["<leader>xq"] = { "<cmd>TroubleToggle quickfix<cr>", desc = "Quickfix" },
    ["gR"] = { "<cmd>TroubleToggle lsp_references<cr>", desc = "LSP References" },
    ["<leader>aa"] = { mark.add_file, desc = "Harpoon mark file" },
    ["<C-e>"] = { ui.toggle_quick_menu, desc = "Toggle Harpoon" },
    ["<leader>aq"] = { function() ui.nav_file(1) end, desc = "Go to file 1" },
    ["<leader>aw"] = { function() ui.nav_file(2) end, desc = "Go to file 2" },
    ["<leader>ae"] = { function() ui.nav_file(3) end, desc = "Go to file 3" },
    ["<leader>ar"] = { function() ui.nav_file(4) end, desc = "Go to file 4" },
    ["<leader>th"] = false,
    ["<leader>tv"] = false,
    ["<leader>t-"] = { "<cmd>ToggleTerm size=10 direction=horizontal<cr>", desc = "Horizontal Terminal" },
    ["<leader>t|"] = { "<cmd>ToggleTerm size=10 direction=vertical<cr>", desc = "Vertical Terminal" },
  }
}
