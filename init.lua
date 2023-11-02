vim.g.mapleader = ' ' --空格作为leader

vim.keymap.set('n', '<Tab>', '<CMD>HopWord<CR>')
vim.keymap.set('n', '<Leader><Tab>', '<CMD>HopChar1<CR>')

vim.cmd [[
    set clipboard^=unnamed,unnamedplus "打通系统剪切板

    "Use JK to move lines
    vnoremap J :m '>+1<CR>gv=gv
    vnoremap K :m '<-2<CR>gv=gv
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

-- workspace

vim.keymap.set('n', '<leader>w', function()
  vim.fn.VSCodeNotify('workbench.action.files.save')
end, { desc = '保存' })

vim.keymap.set('n', '<leader>q', function()
  vim.fn.VSCodeNotify('workbench.action.closeActiveEditor')
end, { desc = '关闭' })

vim.keymap.set('n', '<leader>e', function()
  vim.fn.VSCodeNotify('workbench.view.explorer')
end, { desc = '打开侧边栏' })

vim.keymap.set('n', '<C-S>', function()
  vim.fn.VSCodeNotify('workbench.action.files.saveAll')
end, { desc = '全部保存' })

vim.keymap.set('n', 't', '<C-U>', { desc = '向上滚动' })

vim.keymap.set('n', 'm', '<C-D>', { desc = '向下滚动' })

vim.keymap.set('n', 'L', function()
  vim.fn.VSCodeNotify('workbench.action.nextEditorInGroup')
end, { desc = '下一个tab' })

vim.keymap.set('n', 'H', function()
  vim.fn.VSCodeNotify('workbench.action.previousEditorInGroup')
end, { desc = '上一个tab' })

vim.keymap.set('n', 'p', function()
  vim.fn.VSCodeNotify('workbench.action.pinEditor')
end, { desc = '固定编辑器' })

vim.keymap.set('n', 'P', function()
  vim.fn.VSCodeNotify('workbench.action.unpinEditor')
end, { desc = '取消固定编辑器' })

vim.keymap.set('n', '<leader>bx', function()
  vim.fn.VSCodeNotify('workbench.action.closeOtherEditors')
end, { desc = '关闭多余的编辑器' })

vim.keymap.set('n', '<leader>\\', function()
  vim.fn.VSCodeNotify('workbench.action.splitEditor')
end, { desc = '垂直拆分编辑器' })

vim.keymap.set('n', '<leader><cr>', function()
  vim.fn.VSCodeNotify('workbench.action.splitEditorDown')
end, { desc = '水平拆分编辑器' })

-- search
vim.keymap.set('n', '<leader>sf', function()
  vim.fn.VSCodeNotify('workbench.action.quickOpen')
end, { desc = '查找文件' })

vim.keymap.set('n', '<leader>st', function()
  vim.fn.VSCodeNotify('workbench.action.replaceInFiles')
end, { desc = '查找内容' })

-- git

vim.keymap.set('n', '<leader>gs', function()
  vim.fn.VSCodeNotify('workbench.view.scm')
end, { desc = 'git status' })

vim.keymap.set('n', '<leader>gl', function()
  vim.fn.VSCodeNotify('gitlens.views.commits.focus')
end, { desc = 'git log' })


-- 折叠

vim.keymap.set('n', 'zz', function()
  vim.fn.VSCodeNotify('editor.toggleFold')
end, { desc = '折叠' })

vim.keymap.set('n', 'zm', function()
  vim.fn.VSCodeNotify('editor.foldAll')
end, { desc = '折叠全部' })

vim.keymap.set('n', 'z1', function()
  vim.fn.VSCodeNotify('editor.unfoldAll')
  vim.fn.VSCodeNotify('editor.foldLevel1')
end, { desc = '折叠等级1' })

vim.keymap.set('n', 'z2', function()
  vim.fn.VSCodeNotify('editor.unfoldAll')
  vim.fn.VSCodeNotify('editor.foldLevel2')
end, { desc = '折叠等级2' })

vim.keymap.set('n', 'z3', function()
  vim.fn.VSCodeNotify('editor.unfoldAll')
  vim.fn.VSCodeNotify('editor.foldLevel3')
end, { desc = '折叠等级3' })

vim.keymap.set('n', 'z4', function()
  vim.fn.VSCodeNotify('editor.unfoldAll')
  vim.fn.VSCodeNotify('editor.foldLevel4')
end, { desc = '折叠等级4' })

vim.keymap.set('n', 'z5', function()
  vim.fn.VSCodeNotify('editor.unfoldAll')
  vim.fn.VSCodeNotify('editor.foldLevel5')
end, { desc = '折叠等级5' })

vim.keymap.set('n', 'z6', function()
  vim.fn.VSCodeNotify('editor.unfoldAll')
  vim.fn.VSCodeNotify('editor.foldLevel6')
end, { desc = '折叠等级6' })

vim.keymap.set('n', 'z7', function()
  vim.fn.VSCodeNotify('editor.unfoldAll')
  vim.fn.VSCodeNotify('editor.foldLevel7')
end, { desc = '折叠等级7' })

vim.keymap.set('n', 'zu', function()
  vim.fn.VSCodeNotify('editor.unfoldRecursively')
end, { desc = '以递归方式展开' })

vim.keymap.set('n', 'z0', function()
  vim.fn.VSCodeNotify('editor.unfoldAll')
end, { desc = '全部展开' })

vim.keymap.set('n', 'zk', function()
  vim.fn.VSCodeNotify('editor.gotoPreviousFold')
end, { desc = '转到上一个折叠范围' })

vim.keymap.set('n', 'zj', function()
  vim.fn.VSCodeNotify('editor.gotoNextFold')
end, { desc = '转到下一个折叠范围' })

-- 需要安装alefragnani.Bookmarks插件

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

-- lsp

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

vim.keymap.set('n', 'gR', function()
  vim.fn.VSCodeNotify('references-view.findReferences')
end, { desc = '转到所有引用' })

vim.keymap.set('n', '<leader>lr', function()
  vim.fn.VSCodeNotify('editor.action.rename')
end, { desc = '重命名' })

vim.keymap.set('n', '<leader>lf', function()
  vim.fn.VSCodeNotify('editor.action.formatDocument')
end, { desc = '格式化文档' })


-- select

vim.keymap.set('n', 'dA', 'd%')

vim.keymap.set('n', 'vA', 'v%')

-- editor
vim.keymap.set('n', '<leader>/', function()
  vim.fn.VSCodeNotify('editor.action.commentLine')
end, { desc = '切换注释' })

require("plug")
