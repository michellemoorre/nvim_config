require("nvim-lsp-installer").setup {}
require "lspconfig".gopls.setup{}
require "lspconfig".pylsp.setup{}
require "lspconfig".sumneko_lua.setup{}
require "lspconfig".clangd.setup{
    cmd = {
        "clangd",
        "--query-driver=/usr/local/bin/g++-11",
        "--clang-tidy",
        "--clang-tidy-checks=*",
        "--log=verbose"
    },
    init_options = {compilationDatabasePath="./build"}
}
