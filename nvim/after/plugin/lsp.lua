local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

---
-- Replace these language servers
-- with the ones you have installed in your system
---
require('lspconfig').lua_ls.setup({})
require('lspconfig').pylsp.setup({})
require('lspconfig').clangd.setup({})
require('lspconfig').gopls.setup({})
require('lspconfig').ts_ls.setup({})
require('lspconfig').html.setup({})
require('lspconfig').tailwindcss.setup({})
require('lspconfig').zls.setup({})

--- CMP only

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()


cmp.setup({
	mapping = cmp.mapping.preset.insert({
		-- `Enter` key to confirm completion
        ['<CR>'] = cmp.mapping.confirm({ select = true }),

		-- Ctrl+Space to trigger completion menu
		['<C-Space>'] = cmp.mapping.complete(),

		-- Navigate between snippet placeholder
		['<C-f>'] = cmp_action.luasnip_jump_forward(),
		['<C-b>'] = cmp_action.luasnip_jump_backward(),

		-- Scroll up and down in the completion documentation
		['<C-u>'] = cmp.mapping.scroll_docs(-4),
		['<C-d>'] = cmp.mapping.scroll_docs(4),

        -- Auto completion navigation
        ['<C-k>'] = cmp.mapping(cmp.mapping.select_prev_item(), { 'i', 'c' }),
        ['<C-j>'] = cmp.mapping(cmp.mapping.select_next_item(), { 'i', 'c' }),
	})
})
