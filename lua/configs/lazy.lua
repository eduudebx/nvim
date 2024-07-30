return{
    {
	"oxfist/night-owl.nvim", lazy = false, priority = 1000,
  	config = function()
    	    require("night-owl").setup()
    	    vim.cmd.colorscheme("night-owl")
  	end
    },
    {
	"nvim-telescope/telescope.nvim", tag = "0.1.8",
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = function() return require "configs.telescope" end
    },
    {
	"nvim-treesitter/nvim-treesitter",
	opts = {
	    ensure_installed = {"lua", "html", "css", "javascript", "python", "sql"}
	}
    },
    {
        "williamboman/mason.nvim",
	cmd = {"Mason", "MasonInstall", "MasonInstallAll", "MasonUpdate", "MasonUninstallAll"},
	opts = function() return require "configs.mason" end,
	config = function(_, opts)
	    require("mason").setup(opts)
	    vim.api.nvim_create_user_command("MasonInstallAll",
	        function()
		    if opts.ensure_installed and #opts.ensure_installed > 0 then
			vim.cmd("MasonInstall" .. table.concat(opts.ensure_installed, " "))
		    end
		end, {})
	    vim.g.mason_binaries_list = opts.ensure_installed
	end	    
    },
    {
	"williamboman/mason-lspconfig.nvim", 
	{
	    "neovom/nvim-lspconfig",
	    dependencies = {
		    {"williamboman/mason.nvim"}, {"williamboman/mason-lspconfig.nvim"}
	    },
	    config = function() require "configs.lspconfig" end
	}
    }
}
