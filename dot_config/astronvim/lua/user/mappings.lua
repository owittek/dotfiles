return {
  n = {
    ["<C-s>"] = { "<cmd>MarkdownPreviewToggle<cr>", desc = "Toggle Markdown Preview" },
    ["]b"] = false,
    ["[b"] = false,
    ["<S-l>"] = { function() require("astronvim.utils.buffer").nav(1) end, desc = "Next buffer" },
    ["<S-h>"] = { function() require("astronvim.utils.buffer").nav(-1) end, desc = "Previous buffer" },
    ["<leader>x"] = { name = "+Trouble" },
    ["<leader>xx"] = { "<cmd>TroubleToggle<cr>", desc = "Toggle Trouble" },
    ["<leader>xw"] = {
      "<cmd>TroubleToggle workspace_diagnostics<cr>",
      desc = "Workspace Diagnostics",
    },
    ["<leader>xd"] = {
      "<cmd>TroubleToggle document_diagnostics<cr>",
      desc = "Document Diagnostics",
    },
    ["<leader>xl"] = {
      "<cmd>TroubleToggle loclist<cr>",
      desc = "Location List",
    },
    ["<leader>xq"] = { "<cmd>TroubleToggle quickfix<cr>", desc = "Quickfix" },
    ["gR"] = {
      "<cmd>TroubleToggle lsp_references<cr>",
      desc = "LSP References",
    },
    ["<leader>th"] = false,
    ["<leader>tv"] = false,
    ["<leader>t-"] = {
      "<cmd>ToggleTerm size=10 direction=horizontal<cr>",
      desc = "Horizontal Terminal",
    },
    ["<leader>t|"] = {
      "<cmd>ToggleTerm size=10 direction=vertical<cr>",
      desc = "Vertical Terminal",
    },
    ["<leader>r"] = { name = "+Crates" },
    ["<leader>rt"] = {
      function() require("crates").toggle() end,
      desc = "Toggle Crates",
    },
    ["<leader>rr"] = {
      function() require("crates").reload() end,
      desc = "Reload Crates",
    },
    ["<leader>rv"] = {
      function() require("crates").show_versions_popup() end,
      desc = "Show Versions",
    },
    ["<leader>rf"] = {
      function() require("crates").show_features_popup() end,
      desc = "Show Features",
    },
    ["<leader>rd"] = {
      function() require("crates").show_dependencies_popup() end,
      desc = "Show Deps",
    },
    ["<leader>ru"] = {
      function() require("crates").update_crate() end,
      desc = "Update Crate",
    },
    ["<leader>ra"] = {
      function() require("crates").update_all_crates() end,
      desc = "Update All",
    },
    ["<leader>rU"] = {
      function() require("crates").upgrade_crate() end,
      desc = "Upgrade Crate",
    },
    ["<leader>rA"] = {
      function() require("crates").upgrade_all_crates() end,
      desc = "Upgrade All",
    },
    ["<leader>rH"] = {
      function() require("crates").open_homepage() end,
      desc = "Open HP",
    },
    ["<leader>rR"] = {
      function() require("crates").open_repository() end,
      desc = "Open Repo",
    },
    ["<leader>rD"] = {
      function() require("crates").open_documentation() end,
      desc = "Open Docs",
    },
    ["<leader>rC"] = {
      function() require("crates").open_crates_io() end,
      desc = "Open crates.io",
    },
  },
  v = {
    ["<leader>ru"] = {
      function() require("crates").update_crates() end,
      desc = "Update Crates",
    },
    ["<leader>rU"] = {
      function() require("crates").upgrade_crates() end,
      desc = "Upgrade Crates",
    },
  },
}
