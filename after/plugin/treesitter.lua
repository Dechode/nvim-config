local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then 
	return
end

configs.setup {
	ensure_installed = {"c", "vimdoc", "query", "lua", "rust", "python", "gdscript"},
	sync_install = false,
	ignore_install = {""},
	highlight = {
		enable = true,
		disable = {""},
		additional_vim_regex_highlighting = false,
	},
	indent = { enable = true, disable = { "yaml" } },
}

