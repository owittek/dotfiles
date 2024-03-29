return {
  g = {
    resession_enabled = true,
    loaded_perl_provider = 0,
  },
  opt = {
    foldcolumn = "0",
    list = true,
    listchars = { tab = "│→", extends = "⟩", precedes = "⟨", trail = "·", nbsp = "␣" },
    wrap = true,
    linebreak = true,
    spelllang = "en_us",
    spellfile = vim.fn.expand "~/.config/astronvim/lua/user/spell/en.utf-8.add",
    showtabline = (vim.t.bufs and #vim.t.bufs > 1) and 2 or 1,
  },
}
