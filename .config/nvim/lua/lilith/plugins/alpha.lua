return {
    'goolord/alpha-nvim',
    lazy = true,
    event = "VimEnter",
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        local alpha = require("alpha")
        local dashboard = require("alpha.themes.dashboard")
        local headers = require("lilith.plugins.ascii")

        math.randomseed(os.time())


        -- greeting function
        local function getGreeting(name)
            local tableTime = os.date("*t")
            local datetime = os.date(" %H:%M:%S")
            local hour = tableTime.hour
            local greetingsTable = {
                [1] = "૮ – ﻌ–ა 󰣐 It's bedtime",
                [2] = "/ᐠ. w.ᐟ\\ 󰣐 Wakey time",
                [3] = "૮₍´˶• . • ⑅ ₎ა 󰣐 Suns up",
                [4] = "₍^. 3.^₎ 󰣐 Good evening",
                [5] = "૮ • ﻌ - ა 󰣐 The moons out",
            }
            local greetingIndex = 0
            if hour == 23 or hour < 5 then
                greetingIndex = 1
            elseif hour < 11 then
                greetingIndex = 2
            elseif hour >= 11 and hour < 17 then
                greetingIndex = 3
            elseif hour >= 17 and hour < 21 then
                greetingIndex = 4
            elseif hour >= 21 then
                greetingIndex = 5
            end
            return datetime .. "   " .. greetingsTable[greetingIndex] .. ", " .. name .. "!"
        end

        -- commands to remember for functionality like 'gg=G' to format all


        -- apply sections
        dashboard.section.header.val = headers
        dashboard.section.header.opts = { position = 'center', hl = 'Text', spacing = 0 }
        dashboard.section.buttons.val = {
            dashboard.button( "n", "  > Open" , ":Neotree current<CR>"),
            dashboard.button( "r", "  > Recent"   , ":Telescope oldfiles<CR>"),
            dashboard.button( "f", "  > Find", ":Telescope find_files<CR>"),
        }
        dashboard.section.buttons.opts = { position = 'center', spacing = 2 }
        dashboard.section.footer.val = getGreeting("Lilith")
        dashboard.section.footer.opts = { position = 'center', hl = { { 'Bold', 0, 100 }, { 'Special', 0, 15} }, spacing = 0 }
        dashboard.opts.layout[1].val = 9

        alpha.setup(dashboard.opts)
    end,
    opts = function()
        local autocmd = vim.api.nvim_create_autocmd   -- Create autocommand

        -- Disable the statusline, tabline and cmdline while the alpha dashboard is open
        autocmd('User', {
            pattern = 'AlphaReady',
            desc = 'disable status, tabline and cmdline for alpha',
            callback = function()
                vim.go.laststatus = 0
                vim.opt.showtabline = 0
                vim.opt.cmdheight = 0
            end,
        })
        autocmd('BufUnload', {
            buffer = 0,
            desc = 'enable status, tabline and cmdline after alpha',
            callback = function()
                vim.go.laststatus = 2
                vim.opt.showtabline = 2
                vim.opt.cmdheight = 1
            end,
        })
    end
}
