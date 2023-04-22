
if vim.g.vscode then
    -- VSCode extension
    require("pimg.remap")
    require("pimg")
    require("pimg.vscode_remap")
else
    -- ordinary Neovim
    require("pimg.remap")
    require("pimg")
    require("pimg.packer")
end
