vim.g.mapleader = ' ' --空格作为leader

vim.keymap.set('n', '<Tab>', '<CMD>HopWord<CR>')
vim.keymap.set('n', '<Leader><Tab>', '<CMD>HopChar1<CR>')

vim.cmd [[
    set clipboard^=unnamed,unnamedplus "打通系统剪切板
]]

vim.keymap.set('v', ',(', '<esc>`>a)<esc>`<i(<esc>', { desc = '加括号()' })
vim.keymap.set('v', ',[', '<esc>`>a]<esc>`<i[<esc>', { desc = '加括号[]' })
vim.keymap.set('v', ',{', '<esc>`>a}<esc>`<i{<esc>', { desc = '加括号{}' })
vim.keymap.set('v', ',"', '<esc>`>a"<esc>`<i"<esc>', { desc = '加括号()' })
vim.keymap.set('v', ',<', '<esc>`>a/><esc>`<i<<esc>', { desc = '加括号</>' })
vim.keymap.set('v', ",'", "<esc>`>a'<esc>`<i'<esc>", { desc = "加括号''" })
vim.keymap.set('v', ',`', '<esc>`>a`<esc>`<i`<esc>', { desc = '加括号``' })

vim.keymap.set('n', '<leader>h', '<CMD>noh<CR>', { desc = '取消高亮' })

vim.keymap.set('n', 'Y', 'y$', { desc = '复制该行' })

-- select
vim.keymap.set('n', 'dA', 'd%')

vim.keymap.set('n', 'vA', 'v%')

-- move

vim.keymap.set('n', 't', '<C-U>', { desc = '向上滚动' })

vim.keymap.set('n', 'm', '<C-D>', { desc = '向下滚动' })

-- vscode

vim.keymap.set('n', '<leader>w', function()
  vim.fn.VSCodeNotify('workbench.action.files.save')
end, { desc = '保存' })

vim.keymap.set('n', '<leader>q', function()
  vim.fn.VSCodeNotify('workbench.action.closeActiveEditor')
end, { desc = '关闭' })

vim.keymap.set('n', '<leader>e', function()
  vim.fn.VSCodeNotify('workbench.view.explorer')
end, { desc = '打开侧边栏' })

vim.keymap.set('n', 'L', function()
  vim.fn.VSCodeNotify('workbench.action.nextEditorInGroup')
end, { desc = '下一个tab' })

vim.keymap.set('n', 'H', function()
  vim.fn.VSCodeNotify('workbench.action.previousEditorInGroup')
end, { desc = '上一个tab' })

vim.keymap.set('n', '<leader>bx', function()
  vim.fn.VSCodeNotify('workbench.action.closeOtherEditors')
end, { desc = '关闭多余的编辑器' })

vim.keymap.set('n', '<leader>\\', function()
  vim.fn.VSCodeNotify('workbench.action.splitEditor')
end, { desc = '垂直拆分编辑器' })

vim.keymap.set('n', '<leader><cr>', function()
  vim.fn.VSCodeNotify('workbench.action.splitEditorDown')
end, { desc = '水平拆分编辑器' })

vim.keymap.set('n', 'zz', function()
  vim.fn.VSCodeNotify('editor.toggleFold')
end, { desc = '折叠' })

vim.keymap.set('n', '<leader>ml', function()
  vim.fn.VSCodeNotify('bookmarks.listFromAllFiles')
end, { desc = '列出所有bookmark' })

vim.keymap.set('n', '<leader>mm', function()
  vim.fn.VSCodeNotify('bookmarks.toggle')
end, { desc = 'toggle bookmark' })

vim.keymap.set('n', '<leader>mc', function()
  vim.fn.VSCodeNotify('bookmarks.toggleLabeled')
end, { desc = 'toggle bookmark(带注释)' })

vim.keymap.set('n', '<leader>mj', function()
  vim.fn.VSCodeNotify('bookmarks.jumpToNext')
end, { desc = '下一个bookmark' })

vim.keymap.set('n', '<leader>mk', function()
  vim.fn.VSCodeNotify('bookmarks.jumpToPrevious')
end, { desc = '上一个bookmark' })

vim.keymap.set('n', '<leader>lk', function()
  vim.fn.VSCodeNotify('editor.action.marker.prevInFiles')
end, { desc = '转到上一个问题' })

vim.keymap.set('n', '<leader>lj', function()
  vim.fn.VSCodeNotify('editor.action.marker.nextInFiles')
end, { desc = '转到下一个问题' })

vim.keymap.set('n', '<leader>la', function()
  vim.fn.VSCodeNotify('editor.action.quickFix')
end, { desc = 'Quick Fix' })

vim.keymap.set('n', 'gr', function()
  vim.fn.VSCodeNotify('editor.action.goToReferences')
end, { desc = '转到引用' })

vim.keymap.set('n', '<leader>lr', function()
  vim.fn.VSCodeNotify('editor.action.rename')
end, { desc = '重命名' })

vim.keymap.set('n', '<leader>lf', function()
  vim.fn.VSCodeNotify('editor.action.formatDocument')
end, { desc = '格式化文档' })

vim.keymap.set('n', '<leader>/', function()
  vim.fn.VSCodeNotify('editor.action.commentLine')
end, { desc = '切换注释' })

require("plug")