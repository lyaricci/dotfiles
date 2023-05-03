return {
	-- Ignore node_modules on find files
	require("telescope").setup({
		defaults = {
			file_ignore_patterns = {
				"node_modules",
			},
		},
	}),

	-- React snippets
	"SirVer/ultisnips",
	"mlaursen/vim-react-snippets",
}
