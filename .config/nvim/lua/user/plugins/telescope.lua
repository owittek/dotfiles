local trouble = require("trouble.providers.telescope")
return {
  load_extension = { "harpoon" },
  defaults = {
    mappings = {
      i = { ["<c-t>"] = trouble.open_with_trouble },
      n = { ["<c-t>"] = trouble.open_with_trouble },
    },
  },
}
