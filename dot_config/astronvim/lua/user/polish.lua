-- Only show tabline when more than one tab
vim.api.nvim_create_autocmd("User", {
  desc = "Hide tabline when only one buffer and one tab",
  pattern = "AstroBufsUpdated",
  group = vim.api.nvim_create_augroup("hidetabline", { clear = true }),
  callback = function()
    local new_showtabline = #vim.t.bufs > 1 and 2 or 1
    if new_showtabline ~= vim.opt.showtabline:get() then vim.opt.showtabline = new_showtabline end
  end,
})

-- Enable spell and wrap for markdown and gitcommit
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "gitcommit", "markdown" },
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.spell = true
  end,
})
