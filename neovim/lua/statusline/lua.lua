local lsp = require('feline.providers.lsp')
local vi_mode_utils = require('feline.providers.vi_mode')

local properties = {
  force_inactive = {
    filetypes = {},
    buftypes = {},
    bufnames = {}
  }
}

local components = {
	active = {{}, {}},
	inactive = {{}, {}}
}

local colors = {
  bg = '#0d0d0f',
  black = '#0d0d0f',
  yellow = '#d8a657',
  cyan = '#89b482',
  oceanblue = '#45707a',
  green = '#a9b665',
  orange = '#e78a4e',
  violet = '#a071a6',
  magenta = '#c14a4a',
  white = '#e0e0e4',
  fg = '#d0d0d4',
  skyblue = '#7daea3',
  red = '#dc5050',
}

local vi_mode_colors = {
  NORMAL = 'violet',
  OP = 'green',
  INSERT = 'red',
  VISUAL = 'orange',
  BLOCK = 'orange',
  REPLACE = 'green',
  ['V-REPLACE'] = 'green',
  ENTER = 'cyan',
  MORE = 'cyan',
  SELECT = 'orange',
  COMMAND = 'oceanblue',
  SHELL = 'green',
  TERM = 'green',
  NONE = 'yellow'
}

local vi_mode_text = {
  NORMAL = 'N',
  OP = 'O',
  INSERT = 'I',
  VISUAL = 'v',
  BLOCK = 'V',
  REPLACE = 'r',
  ['V-REPLACE'] = 'R',
  COMMAND = 'C',
  SHELL = 'S',
  TERM = 'T',
}

properties.force_inactive.filetypes = {
  'NvimTree',
  'dbui',
  'packer',
  'startify',
  'fugitive',
  'fugitiveblame',
  'vista_kind'
}

properties.force_inactive.buftypes = {
  'terminal'
}

-- LEFT

-- vi-mode
components.active[1][1] = {
  provider = ' Neovim ',
  hl = function()
    local val = {}

    val.bg = vi_mode_utils.get_mode_color()
    val.fg = 'black'
    val.style = 'bold'

    return val
  end,
  right_sep = ' '
}
-- vi-symbol
components.active[1][2] = {
  provider = function()
    return vi_mode_text[vi_mode_utils.get_vim_mode()]
  end,
  hl = function()
    local val = {}
    val.fg = vi_mode_utils.get_mode_color()
    val.bg = 'bg'
    val.style = 'bold'
    return val
  end,
  right_sep = '  '
}
components.active[1][3] = {
  provider = function()
    local filename = vim.fn.expand('%:t')
    local extension = vim.fn.expand('%:e')
    local icon  = require'nvim-web-devicons'.get_icon(filename, extension)
    if icon == nil then
      icon = ''
    end
    return icon
  end,
  hl = function()
    local val = {}
    local filename = vim.fn.expand('%:t')
    local extension = vim.fn.expand('%:e')
    local icon, name  = require'nvim-web-devicons'.get_icon(filename, extension)
    if icon ~= nil then
      val.fg = vim.fn.synIDattr(vim.fn.hlID(name), 'fg')
    else
      val.fg = 'white'
    end
    val.bg = 'bg'
    val.style = 'bold'
    return val
  end,
  right_sep = ' '
}
-- filename
components.active[1][4] = {
  provider = function()
    return vim.fn.expand("%:F")
  end,
  hl = {
    fg = 'white',
    bg = 'bg',
    style = 'bold'
  },
  right_sep = ' '
}
components.active[1][5] = {
  provider = 'file_size',
  enabled = function() return vim.fn.getfsize(vim.fn.expand('%:t')) > 0 end,
  hl = {
    fg = 'skyblue',
    bg = 'bg',
    style = 'bold'
  },
  right_sep = ' '
}
-- gitBranch
components.active[1][6] = {
  provider = 'git_branch',
  hl = {
    fg = 'violet',
    bg = 'bg',
    style = 'bold'
  }
}
-- diffAdd
components.active[1][7] = {
  provider = 'git_diff_added',
  hl = {
    fg = 'green',
    bg = 'bg',
    style = 'bold'
  }
}
-- diffModfified
components.active[1][8] = {
  provider = 'git_diff_changed',
  hl = {
    fg = 'orange',
    bg = 'bg',
    style = 'bold'
  }
}
-- diffRemove
components.active[1][9] = {
  provider = 'git_diff_removed',
  hl = {
    fg = 'red',
    bg = 'bg',
    style = 'bold'
  }
}

-- RIGHT

-- diagnosticErrors
components.active[2][1] = {
  provider = 'diagnostic_errors',
  enabled = function() return lsp.diagnostics_exist('Error') end,
  icon = " ",
  hl = {
    fg = 'red',
    style = 'bold'
  },
  right_sep = ' '
}
-- diagnosticWarn
components.active[2][2] = {
  provider = 'diagnostic_warnings',
  enabled = function() return lsp.diagnostics_exist('Warning') end,
  icon = ' ',
  hl = {
    fg = 'yellow',
    style = 'bold'
  },
  right_sep = ' '
}
-- diagnosticHint
components.active[2][3] = {
  provider = 'diagnostic_hints',
  enabled = function() return lsp.diagnostics_exist('Hint') end,
  icon = ' ',
  hl = {
    fg = 'skyblue',
    style = 'bold'
  },
  right_sep = ' '
}
-- diagnosticInfo
components.active[2][4] = {
  provider = 'diagnostic_info',
  enabled = function() return lsp.diagnostics_exist('Information') end,
  icon = ' ',
  hl = {
    fg = 'fg',
    style = 'bold'
  },
  right_sep = ' '
}
-- LspName
components.active[2][5] = {
  provider = 'lsp_client_names',
  icon = '  ',
  hl = {
    fg = 'white',
    bg = 'bg',
    style = 'bold'
  },
  left_sep = '',
  right_sep = ' '
}


-- INACTIVE

-- fileType
components.inactive[1][1] = {
  provider = 'file_type',
  hl = {
    fg = 'black',
    bg = 'violet',
    style = 'bold'
  },
  left_sep = {
    str = ' ',
    hl = {
      fg = 'NONE',
      bg = 'violet'
    }
  },
  right_sep = {
    {
      str = ' ',
      hl = {
        fg = 'NONE',
        bg = 'violet'
      }
    },
    ' '
  }
}
-- filename
components.inactive[1][2] = {
  provider = 'file_info', 
  hl = {
    fg = 'white',
    bg = 'bg',
    style = 'bold'
  },
  right_sep = ''
}

require('feline').setup({
  colors = colors,
  default_bg = colors.bg,
  default_fg = colors.fg,
  vi_mode_colors = vi_mode_colors,
  components = components,
  properties = properties,
})
