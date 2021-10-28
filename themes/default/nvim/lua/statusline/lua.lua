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

local colors = require("palette.lua")

local vi_mode_colors = {
  NORMAL = 'violet',
  OP = 'green',
  INSERT = 'red',
  VISUAL = 'orange',
  BLOCK = 'orange',
  REPLACE = 'green',
  ['V-REPLACE'] = 'green',
  ENTER = 'indigo',
  MORE = 'indigo',
  SELECT = 'orange',
  COMMAND = 'blue',
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

local function sephl()
    local val = {}
    val.fg = 'bg2'
    val.bg = 'bg2'
    return val
end

-- LEFT

-- vi-mode
components.active[1][1] = {
  provider = ' Neovim ',
  hl = function()
    local val = {}

    val.bg = vi_mode_utils.get_mode_color()
    val.fg = 'bg2'
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
    val.bg = 'bg2'
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
    val.bg = 'bg2'
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
    bg = 'bg2',
    style = 'bold'
  },
  right_sep = 
  {
    str = ' ',
    hl = sephl(),
  }
}
components.active[1][5] = {
  provider = 'file_size',
  enabled = function() return vim.fn.getfsize(vim.fn.expand('%:t')) > 0 end,
  hl = {
    fg = 'blue',
    bg = 'bg2',
    style = 'bold'
  },
  right_sep = 
  {
    str = ' ',
    hl = sephl(),
  }
}
-- gitBranch
components.active[1][6] = {
  provider = 'git_branch',
  hl = {
    fg = 'violet',
    bg = 'bg2',
    style = 'bold'
  }
}
-- diffAdd
components.active[1][7] = {
  provider = 'git_diff_added',
  hl = {
    fg = 'green',
    bg = 'bg2',
    style = 'bold'
  }
}
-- diffModfified
components.active[1][8] = {
  provider = 'git_diff_changed',
  hl = {
    fg = 'orange',
    bg = 'bg2',
    style = 'bold'
  }
}
-- diffRemove
components.active[1][9] = {
  provider = 'git_diff_removed',
  hl = {
    fg = 'red',
    bg = 'bg2',
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
  right_sep = 
  {
    str = ' ',
    hl = sephl(),
  }
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
    fg = 'blue',
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
  enabled = function() return lsp.diagnostics_exist('Information') end,
  icon = ' ',
  hl = {
    fg = 'fg1',
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
    bg = 'bg2',
    style = 'bold'
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
    fg = 'bg2',
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
      },
    },
    {
      str = ' ',
      hl = {
        fg = 'NONE',
        bg = 'bg2'
      },
    },
  }
}
-- filename
components.inactive[1][2] = {
  provider = 'file_info', 
  hl = {
    fg = 'fg1',
    bg = 'bg2',
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
  default_bg = colors.bg2,
  default_fg = colors.fg1,
  vi_mode_colors = vi_mode_colors,
  components = components,
  properties = properties,
})
