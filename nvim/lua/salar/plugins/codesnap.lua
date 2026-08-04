return {
  "mistricky/codesnap.nvim",
  build = false,
  config = function()
    require("codesnap").setup({
      show_line_number = true,
      show_workspace = true,
      snapshot_config = {
        theme = "candy",
      },
    })
  end,
}
