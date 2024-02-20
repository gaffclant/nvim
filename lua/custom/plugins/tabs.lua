return {
  'romgrk/barbar.nvim',
  dependencies = {
    'lewis6991/gitsigns.nvim',     -- OPTIONAL: for git status
    'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
  },
  init = function() vim.g.barbar_auto_setup = false end,
  config = function()
    require("barbar").setup({
      animation = true,
      auto_hide = true,
      tabpages = true,
      gitsigns = {
        added = { enabled = true, icon = '+' },
        changed = { enabled = true, icon = '~' },
        deleted = { enabled = true, icon = '-' },
      },
      sidebar_filetypes = {
        ['neo-tree'] = { event = 'BufWipeout', text = "NeoTree" },
      },
    })
    vim.api.nvim_set_keymap("n", "H", "<cmd>BufferPrevious<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "L", "<cmd>BufferNext<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("n", "<c-x>", "<cmd>BufferClose<CR>", { noremap = true, silent = true })
  end,
  version = '^1.0.0', -- optional: only update when a new 1.x version is released
}
