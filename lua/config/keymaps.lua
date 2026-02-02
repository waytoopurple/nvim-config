local map = vim.keymap.set

map("n", "<leader>ba", "<cmd>BookmarksMark<CR>", { desc = "Add or remove Bookmark" })
map("n", "<leader>bg", "<cmd>BookmarksGoto<CR>", { desc = "Goto Bookmark with telescope" })
map("n", "<leader>bl", "<cmd>BookmarksLists<cr>",{ desc = "List Bookmarklists" })
map("n", "<leader>bn", "<cmd>BookmarksNewList<cr>",{ desc = "List Bookmarklists" })
