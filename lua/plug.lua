-- https://github.com/wbthomason/packer.nvim#bootstrapping
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- Use a protected call so we don't error out on first use
local packer_ok, packer = pcall(require, "packer")
if not packer_ok then
  print('bad packer')
  return
end

-- Have packer use a popup window
packer.init({
  display = {
    open_fn = function()
      return require("packer.util").float({ border = "rounded" })
    end,
  },
})

return require('packer').startup(
  function(use)
    use "nvim-lua/plenary.nvim"
    use 'wbthomason/packer.nvim'
    use { 'phaazon/hop.nvim', config = function()
      local hop_ok, hop = pcall(require, "hop")
      if not hop_ok then
        print('bad hop')
        return
      end
      hop.setup()
      -- todo nvim_set_hl
      vim.cmd [[
        hi HopNextKey1_ZKY guifg=#00dfff gui=bold ctermfg=45 cterm=bold
        hi HopNextKey2_ZKY guifg=#39c39c ctermfg=33
        "一定要加感叹号
        hi! link HopNextKey1 HopNextKey1_ZKY
        hi! link HopNextKey2 HopNextKey2_ZKY
      ]]
    end }

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
      require('packer').sync()
    end
  end
)
