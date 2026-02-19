return {
    "nvim-treesitter/nvim-treesitter",
    build = function()
        require("nvim-treesitter.install").update({ with_sync = true })()
    end,
    config = function()
      local configs = require("nvim-treesitter.config")

      configs.setup({
          ensure_installed = {
                "c",
                "lua",
                "javascript",
                "html",
                "python"
            },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = {
                "python",
                "html",
                "jsx", "tsx",
                "css",
            }},
        })
    end
}
