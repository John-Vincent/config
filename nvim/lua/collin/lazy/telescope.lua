return {
    "nvim-telescope/telescope.nvim",

    tag = "0.1.5",

    dependencies = {
        "nvim-lua/plenary.nvim"
    },

    config = function()
        require('telescope').setup{
          defaults = {
            vimgrep_arguments = {
              'rg',
              '--no-heading',
              '--with-filename',
              '--line-number',
              '--column',
              '--smart-case'
            }
          }
        }

        local builtin = require('telescope.builtin')
        local utils = require('telescope.utils')
        vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
        vim.keymap.set('n', '<leader>sw', function()
            local word = vim.fn.expand("<cword>")
            builtin.grep_string({ search = word })
        end)
        vim.keymap.set('n', '<leader>pWs', function()
            local word = vim.fn.expand("<cWORD>")
            builtin.grep_string({ search = word })
        end)
        vim.keymap.set('n', '<leader>sg', function()
            builtin.live_grep({ cwd = utils.buffer_dir() })
        end)
        vim.keymap.set('n', '<leader>sG', builtin.live_grep, {})
        vim.keymap.set('n', '<leader>sr', builtin.lsp_references, {})
        vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
    end
}
