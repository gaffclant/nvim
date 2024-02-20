return {
  vim.api.nvim_set_keymap("n", "<leader>rr", ":TermExec direction=float cmd='clear && make run'<enter>",
    { noremap = true, silent = true }),
  vim.api.nvim_set_keymap("n", "<leader>rb", ":TermExec direction=float cmd='clear && make build'<enter>",
    { noremap = true, silent = false }),
  vim.api.nvim_set_keymap("n", "<leader>ra", ":TermExec direction=float cmd='clear && make all'<enter>",
    { noremap = true, silent = false }),
  vim.api.nvim_set_keymap("n", "<leader>rc", ":TermExec direction=float cmd='clear && make clean'<enter>",
    { noremap = true, silent = false }),
  vim.api.nvim_set_keymap("n", "<leader>rt", ":TermExec direction=float cmd='clear && make test'<enter>",
    { noremap = true, silent = false }),
}
