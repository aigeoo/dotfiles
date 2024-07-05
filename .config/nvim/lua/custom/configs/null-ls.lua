local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local null_ls = require('null-ls')

local opts = {
  sources = {
    -- python config --
    null_ls.builtins.formatting.black,
    null_ls.builtins.diagnostics.mypy.with({
      extra_args = function()
      local virtual = os.getenv("VIRTUAL_ENV") or os.getenv("CONDA_PREFIX") or "/usr"
      return { "--python-executable", virtual .. "/bin/python3" }
      end,
    }),
    -- null_ls.builtins.diagnostics.ruff,

    -- c/cpp config --
    -- for custom format add .clang-format file to projct root dir
    null_ls.builtins.formatting.clang_format,

    -- ts/js config -- 
    -- null_ls.builtins.diagnostics.eslint,
    null_ls.builtins.formatting.prettier,

    -- go config --
    null_ls.builtins.formatting.gofmt,
    null_ls.builtins.formatting.goimports_reviser,
    null_ls.builtins.formatting.golines,

    -- php config --
    null_ls.builtins.diagnostics.phpstan,
    null_ls.builtins.formatting.phpcsfixer,
    null_ls.builtins.formatting.blade_formatter,
  },
  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({
        group = augroup,
        buffer = bufnr,
      })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format({ bufnr = bufnr })
        end,
      })
    end
  end,
}

return opts
