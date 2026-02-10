return {
	"HiPhish/rainbow-delimiters.nvim",
    lazy = false,
	config = function()
		local rainbow_delimiters = require("rainbow-delimiters")
		require("rainbow-delimiters.setup").setup({
			strategy = {
				[""] = rainbow_delimiters.strategy.global,
				javascript = rainbow_delimiters.strategy.global,
				typescript = rainbow_delimiters.strategy.global,
			},
			highlight = {
				"RainbowDelimiterRed",
				"RainbowDelimiterYellow",
				"RainbowDelimiterBlue",
				"RainbowDelimiterOrange",
				"RainbowDelimiterGreen",
				"RainbowDelimiterViolet",
			},
		})
	end,
}
