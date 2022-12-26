return {
    ["mason-nvim-dap"] = {

        setup_handlers = {
            function(source_name)
                local dap = require("dap")
                dap.adapters.codelldb = {
                    type = "server",
                    port = "${port}",
                    host = "127.0.0.1",
                    executables = {
                        command = vim.env.HOME .. '/.local/share/nvim/mason/packages/codelldb/codelldb',
                        args = { "--port", "${port}", "--arch", "arm64" }
                    }
                }
            end,
        },
    },
}
