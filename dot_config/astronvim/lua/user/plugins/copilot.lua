return {
	{
		"zbirenbaum/copilot.lua",
		-- init = function()
		--   table.insert(astronvim.file_plugins, "copilot.vim")
		-- end,
		event = "InsertEnter",
		dependencies = "zbirenbaum/copilot-cmp",
	},
	"zbirenbaum/copilot-cmp",
}
