local lsp = require('feline.providers.lsp')
local vi_mode_utils = require('feline.providers.vi_mode')

local properties = {
  force_inactive = {
    filetypes = {},
    buftypes = {},
    bufnames = {}
  },
  disable = {
    filetypes = {}, 
    buftypes = {},
    bufnames = {}
  }
}

local components = {
	active = {{}, {}},
	inactive = {{}, {}}
}

local colors = require("palette.lua")

local vi_mode_colors = {
  NORMAL = colors['hil1'],
  OP = colors['green'],
  INSERT = colors['red'],
  VISUAL = colors['orange'],
  BLOCK = colors['orange'],
  REPLACE = colors['green'],
  ['V-REPLACE'] = colors['green'],
  ENTER = colors['indigo'],
  MORE = colors['indigo'],
  SELECT = colors['orange'],
  COMMAND = colors['blue'],
  SHELL = colors['green'],
  TERM = colors['green'],
  NONE = colors['yellow']
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
  'vista_kind',
  'SidebarNvim',
  'Trouble'
}

properties.force_inactive.bufnames = { 
  '^NvimTree$',
  '^SidebarNvim$',
  '^Trouble$',
  'vista'
}

properties.disable.filetypes = {
  'NvimTree',
  'dbui',
  'packer',
  'startify',
  'fugitive',
  'fugitiveblame',
  'vista_kind',
  'SidebarNvim',
  'Trouble'
}

properties.disable.bufnames = { 
  '^NvimTree$',
  '^SidebarNvim$',
  '^Trouble$'
}

properties.force_inactive.buftypes = {
  'terminal'
}

local function sephl()
    local val = {}
    val.fg = colors['bg3']
    val.bg = colors['bg3']
    return val
end

-- LEFT

-- vi-mode
components.active[1][1] = {
  provider = ' Neovim ',
  hl = function()
    local val = {}

    val.bg = vi_mode_utils.get_mode_color()
    val.fg = colors['bg3']
    val.style = 'bold'

    return val
  end,
  right_sep = 
  {
    str = ' ',
    hl = sephl(),
  }
}
-- vi-symbol
components.active[1][2] = {
  provider = function()
    return vi_mode_text[vi_mode_utils.get_vim_mode()]
  end,
  hl = function()
    local val = {}
    val.fg = vi_mode_utils.get_mode_color()
    val.bg = colors['bg3']
    val.style = 'bold'
    return val
  end,
  right_sep = 
  {
    str = '  ',
    hl = sephl(),
  }
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
      val.fg = vim.fn.synIDattr(vim.fn.hlID(name), 'fg1')
    else
      val.fg = 'fg1'
    end
    val.bg = colors['bg3']
    val.style = 'bold'
    return val
  end,
  right_sep = 
  {
    str = ' ',
    hl = sephl(),
  }
}
-- filename
components.active[1][4] = {
  provider = function()
    return vim.fn.expand("%:F")
  end,
  hl = {
    fg = 'fg1',
    bg = colors['bg3'],
    style = 'bold'
  },
  right_sep = 
  {
    str = ' ',
    hl = sephl(),
  }
}

-- gitBranch
components.active[1][5] = {
  provider = 'git_branch',
  hl = {
    fg = colors['violet'],
    bg = colors['bg3'],
    style = 'bold'
  }
}
-- diffAdd
components.active[1][6] = {
  provider = 'git_diff_added',
  hl = {
    fg = colors['green'],
    bg = colors['bg3'],
    style = 'bold'
  }
}
-- diffModfified
components.active[1][7] = {
  provider = 'git_diff_changed',
  hl = {
    fg = colors['orange'],
    bg = colors['bg3'],
    style = 'bold'
  }
}
-- diffRemove
components.active[1][8] = {
  provider = 'git_diff_removed',
  hl = {
    fg = colors['red'],
    bg = colors['bg3'],
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
    fg = colors['error'],
    bg = colors['bg3'],
    style = 'bold'
  },
  right_sep = 
  {
    str = ' ',
    hl = sephl(),
  }
}
-- diagnosticWarn
components.active[2][2] = {
  provider = 'diagnostic_warnings',
  enabled = function() return lsp.diagnostics_exist('Warn') end,
  icon = ' ',
  hl = {
    fg = colors['warn'],
    bg = colors['bg3'],
    style = 'bold'
  },
  right_sep = 
  {
    str = ' ',
    hl = sephl(),
  }
}
-- diagnosticHint
components.active[2][3] = {
  provider = 'diagnostic_hints',
  enabled = function() return lsp.diagnostics_exist('Hint') end,
  icon = ' ',
  hl = {
    fg = colors['hint'],
    bg = colors['bg3'],
    style = 'bold'
  },
  right_sep = 
  {
    str = ' ',
    hl = sephl(),
  }
}
-- diagnosticInfo
components.active[2][4] = {
  provider = 'diagnostic_info',
  enabled = function() return lsp.diagnostics_exist('Info') end,
  icon = ' ',
  hl = {
    fg = 'fg1',
    bg = colors['bg3'],
    style = 'bold'
  },
  right_sep =
  {
    str = ' ',
    hl = sephl(),
  }
}
-- LspName
components.active[2][5] = {
  provider = 'lsp_client_names',
  icon = '  ',
  hl = {
    fg = 'fg1',
    bg = colors['bg3'],
    style = 'bold'
  },
  right_sep =
  {
    str = ' ',
    hl = sephl(),
  }

}


-- file size
components.active[2][6] = {
  provider = 'file_size',
  enabled = function() return vim.fn.getfsize(vim.fn.expand('%:t')) > 0 end,
  hl = {
    fg = colors['blue'],
    bg = colors['bg3'],
    style = 'bold'
  },
  right_sep = 
  {
    str = ' ',
    hl = sephl(),
  }
}

-- file position
components.active[2][7] = {
  provider = "position",
  enabled = true,
  hl = {
    fg = colors['fg1'],
    bg = colors['bg3']
  },
  right_sep = 
  {
    str = ' ',
    hl = sephl(),
  }
}

-- INACTIVE

-- fileType
components.inactive[1][1] = {
  provider = 'file_type',
  hl = {
    fg = colors['bg3'],
    bg = colors['hil1'],
    style = 'bold'
  },
  left_sep = {
    str = ' ',
    hl = {
      fg = 'NONE',
      bg = colors['hil1']
    }
  },
  right_sep = {
    {
      str = ' ',
      hl = {
        fg = 'NONE',
        bg = colors['hil1']
      },
    },
    {
      str = ' ',
      hl = {
        fg = 'NONE',
        bg = colors['bg3']
      },
    },
  }
}
-- filename
components.inactive[1][2] = {
  provider = 'file_info', 
  hl = {
    fg = 'fg1',
    bg = colors['bg3'],
    style = 'bold'
  },
  right_sep =
  {
    str = '',
    hl = sephl(),
  }
}

require('feline').setup({
  colors = colors,
  default_bg = colors.bg3,
  default_fg = colors.fg1,
  vi_mode_colors = vi_mode_colors,
  components = components,
  force_inactive = properties.force_inactive,
  disable = properties.disable,
})
