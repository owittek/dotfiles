return {
  g = {
    loaded_perl_provider = 0,
  },
  opt = {
    list = true,
    listchars = { tab = "│→", extends = "⟩", precedes = "⟨", trail = "·", nbsp = "␣" },
    wrap = true,
    linebreak = true,
    spelllang = "en_us",
    spellfile = vim.fn.expand "~/.config/astronvim/spell/en.utf-8.add",
  },
}
