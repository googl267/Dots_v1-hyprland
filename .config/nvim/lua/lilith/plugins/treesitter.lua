return {
	"nvim-treesitter/nvim-treesitter", 
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			ensure_installed = { "blueprint", "dockerfile", "json", "kotlin", "python", "yuck", "vue", "yaml", "bash", "lua", "go", "toml", "rust", "java", "c_sharp", "html", "css", "scss", "javascript", "typescript" },
			highlight = { enable = true },
			indent = { enable = true }
		})
	end,
}

