local parsers = { "vimdoc", "javascript", "typescript", "c", "lua", "rust", "ruby" }
require("nvim-treesitter").install(parsers)

vim.api.nvim_create_autocmd("FileType", {
    pattern = parsers,
    group = vim.api.nvim_create_augroup("UserTreesitter", { clear = true }),
    callback = function()
        pcall(vim.treesitter.start)
    end,
})
