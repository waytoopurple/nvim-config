return {
	{
		"waytoopurple/fieldlights.nvim",
		lazy = true,
        priority = 1000,
		config = function()
			require("fieldlights").setup()
		end,
	}
}
