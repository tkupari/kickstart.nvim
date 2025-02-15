return {
  'nvim-treesitter/nvim-treesitter-textobjects',

  config = function()
    require('nvim-treesitter.configs').setup {
      textobjects = {
        move = {
          enable = true,
          set_jumps = true, -- whether to set jumps in the jumplist
          goto_next_start = {
            [']m'] = '@function.outer',
          },
          goto_next_end = {
            [']M'] = '@function.outer',
          },
          goto_previous_start = {
            ['[m'] = '@function.outer',
          },
          goto_previous_end = {
            ['[M'] = '@function.outer',
          },
          goto_next = {},
          goto_previous = {},
        },
      },
    }
  end,
}
