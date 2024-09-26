return {
  "doki-theme/doki-theme-vim",
  priority = 0,
  config = function()
    if os.getenv("TERM") == "xterm-kitty" then
      vim.cmd.colorscheme "astolfo"
    end
  end
}
