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
                cons_enabled = true,
                theme = 'everforest'
            }
        })
    end
}
