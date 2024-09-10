require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
map("n", "<leader>gd", vim.lsp.buf.definition, { desc = "Go to definition" })
map("n", "<leader>gi", vim.lsp.buf.implementation, { desc = "Go to implementation" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
