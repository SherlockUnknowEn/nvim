return {
  "nvim-telescope/telescope.nvim",
  keys = {
    -- disable the keymap to grep files
    { "<leader>ff", false },
    -- change a keymap
    { "<C-p>", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
  },
}
