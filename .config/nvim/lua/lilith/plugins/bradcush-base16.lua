return {
    "bradcush/nvim-base16",
    lazy = false,
    priority = 1000,
    config = function()
        vim.cmd([[colorscheme default-base16]])
        vim.cmd("highlight Comment cterm=italic")
    end,
}

