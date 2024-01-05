return {
    "nvim-lualine/lualine.nvim",
    config = function()
        require('lualine').setup{
            options = { 
                theme = 'ayu',
                globalstatus = true,
            },
            sections = {
                lualine_a = {
                    'buffers',
                }
            },
        }
    end,
}
