return {
    { "echasnovski/mini.icons", config = { style = "ascii" } },
    {
        "navarasu/onedark.nvim",
        config = {
            style = "dark",
            colors = {
                highlight_red = "#ef5f6b",
            },
            highlights = {
                FlashLabel = { fg = "$highlight_red" },
                TelescopeMatching = { fg = "$highlight_red", bold = true },
                DashboardHeader = { fg = "orange", bold = true },
                DashboardFooter = { fg = "#e5c07b", italic = true },
                DashboardKey = { fg = "#ff966c", bold = true }
            }
        }
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "onedark",
        },
    },
}
