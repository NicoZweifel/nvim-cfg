local transparent = require("transparent")
transparent.setup({
    groups = { -- table: default groups
        'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
        'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
        'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
        'SignColumn', 'CursorLineNr', 'EndOfBuffer',
    },
    extra_groups = {
        'NormalFloat', -- plugins which have float panel such as Lazy, Mason, LspInfo
        'FloatBorder',
        'NvimTreeWinSeparator',
        'NvimTreeNormal',
        'NvimTreeNormalNC',
        'TroubleNormal',
        'TelescopeNormal',
        'TelescopeBorder',
        'WhichKeyFloat',
        'TabLineFill',
        'TabLine',
        'TabLineSel',
        'BufferTabpageFill',
        'BufferTabpages',
        'BufferVisible',
        'BufferCurrent',
        'BufferInactive',
        'BufferVisibleSign',
        'BufferCurrentSign',
        'BufferInactiveSign',
        'BufferVisibleSignRight',
        'BufferCurrentSignRight',
        'BufferInactiveSignRight',
        'BufferVisibleMod',
        'BufferCurrentMod',
        'BufferInactiveMod',
        'StatusLine'
    },

    exclude_groups = {}, -- table: groups you don't want to clear
})
