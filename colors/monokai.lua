
-- MAIN PALETTE:
-- Dark -2  #161613
-- Dark -1  #1d1e19
-- Dark 0   #272822
-- Dark +1  #6e7066
-- White    #fdfff1
-- Yellow   #e6db74
-- Green    #a6e22e
-- Orange   #fd971f
-- Purple   #ae81ff
-- Pink     #f92672
-- Cyan     #66d9ef

-- Code
vim.api.nvim_set_hl(0, 'Normal',     { fg='#fdfff1', bg='#272822' })
vim.api.nvim_set_hl(0, 'String',     { fg='#e6db74' })
vim.api.nvim_set_hl(0, 'Character',  { link='String' })
vim.api.nvim_set_hl(0, 'Special',    { fg='#fd971f' })
vim.api.nvim_set_hl(0, 'Type',       { fg='#66d9ef' })
vim.api.nvim_set_hl(0, 'Statement',  { fg='#f92672' })
vim.api.nvim_set_hl(0, 'Constant',   { fg='#ae81ff' })
vim.api.nvim_set_hl(0, 'Identifier', { fg='#a6e22e' })
vim.api.nvim_set_hl(0, 'Comment',    { fg='#6e7066' })
vim.api.nvim_set_hl(0, 'PreProc',    { link='Statement' })
vim.api.nvim_set_hl(0, 'Whitespace', { fg='#32332b' })
vim.api.nvim_set_hl(0, 'NonText',    { link='Whitespace' })

-- Diagnostics
vim.api.nvim_set_hl(0, 'DiagnosticError', { fg='Red' })
vim.api.nvim_set_hl(0, 'DiagnosticWarn',  { fg='Orange' })
vim.api.nvim_set_hl(0, 'DiagnosticInfo',  { fg='LightBlue' })
vim.api.nvim_set_hl(0, 'DiagnosticHint',  { fg='LightGray' })
vim.api.nvim_set_hl(0, 'DiagnosticSignError', { fg='Red', bold=true })
vim.api.nvim_set_hl(0, 'DiagnosticSignWarn',  { fg='Orange' })
vim.api.nvim_set_hl(0, 'DiagnosticSignInfo',  { fg=nil })
vim.api.nvim_set_hl(0, 'DiagnosticSignHint',  { fg=nil })
vim.api.nvim_set_hl(0, 'DiagnosticUnderlineError', { sp='Red', undercurl=true })
vim.api.nvim_set_hl(0, 'DiagnosticUnderlineWarn',  { sp='Orange', undercurl=true })
vim.api.nvim_set_hl(0, 'DiagnosticUnderlineInfo',  { fg='LightBlue', underline=true })
vim.api.nvim_set_hl(0, 'DiagnosticUnderlineHint',  { fg='LightGray', underline=true })
vim.api.nvim_set_hl(0, 'DiagnosticLineError', { bg='#442222' })
vim.api.nvim_set_hl(0, 'DiagnosticLineWarn',  {})
vim.api.nvim_set_hl(0, 'DiagnosticLineInfo',  {})
vim.api.nvim_set_hl(0, 'DiagnosticLineHint',  {})

-- Editor
vim.api.nvim_set_hl(0, 'CursorLine',   { bg='#32332b' })
vim.api.nvim_set_hl(0, 'CursorLineNr', { fg='#b6b9ac' })
vim.api.nvim_set_hl(0, 'CursorColumn', { link='CursorLine' })
vim.api.nvim_set_hl(0, 'StatusLine',   { fg='#fdfff1', bg='#161613', bold=true })
vim.api.nvim_set_hl(0, 'StatusLineNC', { fg='#fdfff1', bg='#161613' })
vim.api.nvim_set_hl(0, 'LineNr',       { fg='#43453b' })
vim.api.nvim_set_hl(0, 'Visual', { fg='#ffffff', bg='#1f6b7a' })
vim.api.nvim_set_hl(0, 'MsgArea', { bg='#161613' })

-- Completion kinds
vim.api.nvim_set_hl(0, 'CmpItemKindText',    { link='Special' })
vim.api.nvim_set_hl(0, 'CmpItemKindSnippet', { link='CmpItemKindText' })
vim.api.nvim_set_hl(0, 'CmpItemKindFunction',    { link='Identifier', italic=true })
vim.api.nvim_set_hl(0, 'CmpItemKindMethod',      { link='CmpItemKindFunction' })
vim.api.nvim_set_hl(0, 'CmpItemKindConstructor', { link='CmpItemKindFunction' })
vim.api.nvim_set_hl(0, 'CmpItemKindVariable', { link='Identifier' })
vim.api.nvim_set_hl(0, 'CmpItemKindField',    { link='CmpItemKindVariable' })
vim.api.nvim_set_hl(0, 'CmpItemKindProperty', { link='CmpItemKindVariable' })
vim.api.nvim_set_hl(0, 'CmpItemKindConstant', { link='CmpItemKindVariable' })
vim.api.nvim_set_hl(0, 'CmpItemKindValue',    { link='Constant' })
vim.api.nvim_set_hl(0, 'CmpItemKindClass',     { link='Type' })
vim.api.nvim_set_hl(0, 'CmpItemKindStruct',    { link='CmpItemKindClass' })
vim.api.nvim_set_hl(0, 'CmpItemKindInterface', { link='CmpItemKindClass' })
vim.api.nvim_set_hl(0, 'CmpItemKindEnum',      { link='CmpItemKindClass' })
vim.api.nvim_set_hl(0, 'CmpItemKindKeyword',   { link='Statement' })

-- Popup menu
vim.api.nvim_set_hl(0, 'Pmenu',      { bg='#444444' })
vim.api.nvim_set_hl(0, 'PmenuSel',   { bg='#55555f' })
vim.api.nvim_set_hl(0, 'PmenuSbar',  { bg='#55555f' })
vim.api.nvim_set_hl(0, 'PmenuThumb', { bg='#888892' })

-- Nvim tree
vim.api.nvim_set_hl(0, 'NvimTreeNormal', { fg='#fdfff1', bg='#1d1e19' })
vim.api.nvim_set_hl(0, 'Title',          { fg='#ffffff', bold=true, underline=true })
vim.api.nvim_set_hl(0, 'NvimTreeWinSeparator', { fg='#1d1e19', bg='#1d1e19' })
vim.api.nvim_set_hl(0, 'NvimTreeModifiedIcon', { bold=true })
vim.api.nvim_set_hl(0, 'NvimTreeFileIcon',     { fg='#fdfff1' })
vim.api.nvim_set_hl(0, 'NvimTreeFolderIcon',   { fg='#fdfff1' })
vim.api.nvim_set_hl(0, 'NvimTreeExecFile',     { italic=true })
vim.api.nvim_set_hl(0, 'Directory',            { fg='#fdfff1' })

-- Nvim tree git
vim.api.nvim_set_hl(0, 'NvimTreeGitFileDirtyHL', { fg='#ffff77' })
vim.api.nvim_set_hl(0, 'NvimTreeGitFileNewHL', { fg='#77ff66' })
vim.api.nvim_set_hl(0, 'NvimTreeGitFileDeletedHL', { fg='#ff7777' })
vim.api.nvim_set_hl(0, 'NvimTreeGitFileMergeHL', { fg='#ff77ff' })
vim.api.nvim_set_hl(0, 'NvimTreeGitFileStagedHL', { fg='#7777ff' })
vim.api.nvim_set_hl(0, 'NvimTreeGitFileRenamedHL', { fg='#ffaa55' })
vim.api.nvim_set_hl(0, 'NvimTreeGitFileIgnoredHL', { fg='#777777' })
