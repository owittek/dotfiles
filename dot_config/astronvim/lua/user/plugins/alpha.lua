return {
  "goolord/alpha-nvim",
  cmd = "Alpha",
  opts = function(_, dashboard)
    vim.api.nvim_create_autocmd("UIEnter", {
      callback = function()
        local stats = require("lazy").stats()
        local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
        dashboard.section.footer.val = {
          " ",
          " ",
          " ",
          "AstroNvim loaded " .. require("lazy").stats().count .. " plugins   in " .. ms .. " ms",
        }
      end,
    })

    return dashboard
  end,
}
