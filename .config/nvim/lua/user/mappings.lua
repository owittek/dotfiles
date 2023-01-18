return {
  n = {
    ["<leader>x"] = { name = "+Trouble" },
    ["<leader>xx"] = { "<cmd>TroubleToggle<cr>", desc = "Toggle Trouble" },
    ["<leader>xw"] = { "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "Workspace Diagnostics" },
    ["<leader>xd"] = { "<cmd>TroubleToggle document_diagnostics<cr>", desc = "Document Diagnostics" },
    ["<leader>xl"] = { "<cmd>TroubleToggle loclist<cr>", desc = "Location List" },
    ["<leader>xq"] = { "<cmd>TroubleToggle quickfix<cr>", desc = "Quickfix" },
    ["gR"] = { "<cmd>TroubleToggle lsp_references<cr>", desc = "LSP References" },
    ["<leader>th"] = false,
    ["<leader>tv"] = false,
    ["<leader>t-"] = { "<cmd>ToggleTerm size=10 direction=horizontal<cr>", desc = "Horizontal Terminal" },
    ["<leader>t|"] = { "<cmd>ToggleTerm size=10 direction=vertical<cr>", desc = "Vertical Terminal" },
  },
}
