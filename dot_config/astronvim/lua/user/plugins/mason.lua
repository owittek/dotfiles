local utils = require "astronvim.utils"
return {
  { "williamboman/mason.nvim", opts = { PATH = "append" } },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = function(_, opts)
      for index, lsp in ipairs(opts.ensure_installed) do
        if lsp == "rust_analyzer" then
          table.remove(opts.ensure_installed, index)
          break
        end
      end

      opts.ensure_installed = utils.list_insert_unique(opts.ensure_installed, { "html" })
    end,
  },
  {
    "jay-babu/mason-null-ls.nvim",
    opts = function(_, opts)
      opts.ensure_installed = utils.list_insert_unique(opts.ensure_installed, { "blackd-client" })
    end,
  },
  {
    "lsp-inlayhints.nvim",
    branch = "anticonceal",
    event = "LspAttach",
    init = function()
      vim.api.nvim_create_augroup("LspAttach_inlayhints", {})
      vim.api.nvim_create_autocmd("LspAttach", {
        group = "LspAttach_inlayhints",
        callback = function(args)
          if not (args.data and args.data.client_id) then return end

          local client = vim.lsp.get_client_by_id(args.data.client_id)
          local bufnr = args.buf

          if client.server_capabilities.inlayHintProvider then
            local inlayhints = require "lsp-inlayhints"
            inlayhints.on_attach(client, bufnr, true)
            require("astronvim.utils").set_mappings({
              n = {
                ["<leader>uH"] = { inlayhints.toggle, desc = "Toggle inlay hints" },
              },
            }, { buffer = bufnr })
            vim.api.nvim_set_hl(0, "LspInlayHint", { link = "Comment" })
          end
        end,
      })
    end,
    config = true,
  },
  {
    "rust-tools.nvim",
    dependencies = { "williamboman/mason-lspconfig.nvim" },
    ft = { "rust" },
    opts = function()
      return {
        server = require("astronvim.utils.lsp").config "rust_analyzer",
        tools = { inlay_hints = { auto = false } },
      }
    end,
  },
}
