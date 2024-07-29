return {
    "nvim-telescope/telescope.nvim",
        keys = {
        -- disable the keymap to grep files
        { "<leader>ff", false },
        -- change a keymap
        { "<C-p>", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
    },
    opts = function ()
        local function find_command()
            if 1 == vim.fn.executable("rg") then
                return { "rg", "--files", "--color", "never", "-g", "!.git", "-g", "!node_modules", "-g", "!.cache", "-g", "!third_party*" }
            elseif 1 == vim.fn.executable("fd") then
                return { "fd", "--type", "f", "--color", "never", "-E", ".git", "-E", "!node_modules", "-E", "!.cache", "-E", "!third_party*" }
            elseif 1 == vim.fn.executable("fdfind") then
                return { "fdfind", "--type", "f", "--color", "never", "-E", ".git", "-E", "!node_modules", "-E", "!.cache", "-E", "!third_party*" }
            elseif 1 == vim.fn.executable("find") and vim.fn.has("win32") == 0 then
                return { "find", ".", "-type", "f" }
            elseif 1 == vim.fn.executable("where") then
                return { "where", "/r", ".", "*" }
            end
        end
        return {
            pickers = {
                find_files = {
                    hidden = true,
                    find_command = find_command
                }
            }
        }

    end
}
