return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        require('lualine').setup({
            --sections = {
                --lualine_c = {
                    --'filename',
                    --{ function() return require('bookmarks').status() end }
                --}
            --},
            options = {
                icons_enabled = true,
                theme = require("fieldlights.lualine")
            }
        })
    end
}
