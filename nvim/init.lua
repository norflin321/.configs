vim.cmd([[runtime colors.vim]])

-- settings
vim.o.termguicolors = true
vim.cmd("syntax enable")
vim.cmd("filetype indent plugin on")
vim.cmd("scriptencoding utf-8")
vim.cmd("packadd cfilter")
vim.opt.fixeol = false
vim.opt.encoding = "UTF-8"
vim.opt.fileencoding = "utf-8"
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.scrolloff = 5
vim.opt.sidescrolloff = 5
vim.opt.number = false
vim.opt.signcolumn = "no"
vim.opt.cursorline = false 
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.undodir = vim.fn.expand("~/.vim/undodir")
vim.opt.undofile = true
vim.opt.clipboard = "unnamedplus"
vim.opt.mouse = "a"
vim.opt.mousescroll = "ver:1,hor:0"
vim.opt.autoread = true
vim.opt.hidden = true
vim.opt.shortmess:append("c")
vim.opt.completeopt = { "menuone", "noinsert", "noselect" }
vim.opt.laststatus = 2
vim.opt.showmode = false
vim.opt.showcmd = false
vim.opt.showtabline = 0
vim.opt.cmdheight = 1
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.updatetime = 50
vim.opt.pumheight = 15
vim.opt.smoothscroll = true
vim.opt.guicursor = "a:block"
vim.opt.wildignore:append({
	".DS_Store",
	"*.swp",
	"*.zip",
	"*.exe",
	"**/.git/**",
	"**/node_modules/**",
	"**/.vite/**",
	"**/dist/**",
	"**/build/**",
	"**/target/**",
	"**/android/**",
	"**/ios/**",
})

-- this default mappings we want to disable forever
vim.keymap.set("n", "<Space>", "<NOP>", { noremap = true })
vim.keymap.set("", "<CR>", "<NOP>", { noremap = true })
vim.keymap.set("", "<Up>", "<NOP>", { noremap = true })
vim.keymap.set("", "<Down>", "<NOP>", { noremap = true })
vim.keymap.set("", "<Left>", "<NOP>", { noremap = true })
vim.keymap.set("", "<Right>", "<NOP>", { noremap = true })
vim.keymap.set({ "n", "v" }, "Q", "<NOP>", { noremap = true })
vim.keymap.set({ "n", "v" }, "#", "<NOP>", { noremap = true })
vim.keymap.set({ "n", "v" }, "<C-;>", "<NOP>", { noremap = true })
vim.keymap.set({ "n", "v" }, "<C-.>", "<NOP>", { noremap = true })
vim.keymap.set({ "n", "v" }, "<C-b>", "<NOP>", { noremap = true })
vim.keymap.set({ "n", "v" }, "<C-e>", "<NOP>", { noremap = true })
vim.keymap.set({ "n", "v" }, "<C-u>", "<NOP>", { noremap = true })
vim.keymap.set({ "n", "v" }, "<C-]>", "<NOP>", { noremap = true })
vim.keymap.set({ "n", "v" }, "<C-'>", "<NOP>", { noremap = true })
vim.keymap.set({ "n", "v" }, "<C-v>", "<NOP>", { noremap = true })
vim.keymap.set({ "n", "v" }, "q", "<NOP>", { noremap = true })
vim.keymap.set({ "n", "v" }, ",", "<NOP>", { noremap = true })
vim.keymap.set({ "n", "v" }, "-", "<NOP>", { noremap = true })
vim.keymap.set({ "n", "v" }, "<C-->", "<NOP>", { noremap = true })
vim.keymap.set({ "n", "v" }, "<C-1>", "<NOP>", { noremap = true })
vim.keymap.set({ "n", "v" }, "<C-2>", "<NOP>", { noremap = true })
vim.keymap.set({ "n", "v" }, "<C-3>", "<NOP>", { noremap = true })
vim.keymap.set({ "n", "v" }, "<C-4>", "<NOP>", { noremap = true })
vim.keymap.set({ "n", "v" }, "<C-5>", "<NOP>", { noremap = true })
vim.keymap.set({ "n", "v" }, "<C-6>", "<NOP>", { noremap = true })
vim.keymap.set({ "n", "v" }, "<C-7>", "<NOP>", { noremap = true })
vim.keymap.set({ "n", "v" }, "<C-8>", "<NOP>", { noremap = true })
vim.keymap.set("", "8", "<NOP>", { noremap = true })
vim.keymap.set("", "7", "<NOP>", { noremap = true })
vim.keymap.set("", "6", "<NOP>", { noremap = true })
vim.keymap.set("", "5", "<NOP>", { noremap = true })
vim.keymap.set("", "4", "<NOP>", { noremap = true })
vim.keymap.set("", "3", "<NOP>", { noremap = true })
vim.keymap.set("", "2", "<NOP>", { noremap = true })
vim.keymap.set("", "1", "<NOP>", { noremap = true })
vim.keymap.set({ "n", "v" }, "m", "<NOP>", { noremap = true })
vim.keymap.set({ "n", "v" }, "M", "<NOP>", { noremap = true })
vim.keymap.set("", "ga", "<NOP>", { noremap = true })
vim.keymap.set("v", "K", "<NOP>", { noremap = true })
vim.keymap.set("n", "<C-z>", "<NOP>", { noremap = true })
vim.keymap.set("n", "<C-t>", "<NOP>", { noremap = true })
vim.keymap.set("n", "s", "<NOP>", { noremap = true })
vim.keymap.set("n", "S", "<NOP>", { noremap = true })

-- no matter the search direction we should navigate the same
vim.keymap.set({ "n", "x", "o" }, "n", function() return vim.v.searchforward == 0 and "N" or "n" end, { noremap = true, expr = true })
vim.keymap.set({ "n", "x", "o" }, "N", function() return vim.v.searchforward == 0 and "n" or "N" end, { noremap = true, expr = true })

-- clear search higlight on Esc
vim.keymap.set("n", "<Esc>", ":noh<CR>", { noremap = true, silent = true })

-- navigate between windows
vim.keymap.set("n", "<C-k>", ":wincmd k<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>", { noremap = true, silent = true })

-- delete without yanking
vim.keymap.set("n", "dd", "\"_dd", { noremap = true })
vim.keymap.set("n", "dw", "\"_diw", { noremap = true })
vim.keymap.set("v", "d", "\"_d", { noremap = true })
vim.keymap.set("n", "D", "\"_dd", { noremap = true })
vim.keymap.set("n", "x", "\"_x", { noremap = true })

-- just better yanking
vim.keymap.set("n", "cw", "\"_ciw", { noremap = true })
vim.keymap.set("n", "cl", "\"_ddO", { noremap = true })
vim.keymap.set("n", "yw", "yiw", { noremap = true })
vim.keymap.set("n", "vw", "viw", { noremap = true })

-- move faster vertically
vim.keymap.set({ "n", "v" }, ")", "15j", { noremap = true })
vim.keymap.set({ "n", "v" }, "(", "15k", { noremap = true })

-- move faster horizontally 
vim.keymap.set({ "n", "v" }, "L", "15l", { noremap = true })
vim.keymap.set({ "n", "v" }, "H", "15h", { noremap = true })

-- jump to line end
vim.keymap.set("", "9", "$", { noremap = true })
vim.keymap.set("v", "9", "$h", { noremap = true })

-- jump to match pair
vim.keymap.set("", "8", "%", { noremap = true })

-- move selected lines horizontally
vim.keymap.set("v", "<", "<gv", { noremap = true })
vim.keymap.set("v", ">", ">gv", { noremap = true })

-- move selected lines vertically
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { noremap = true })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { noremap = true })

-- join lines
vim.keymap.set("n", "J", "mzJ`z", { noremap = true })

-- allow to paste into command line
vim.keymap.set("c", "<C-v>", "<C-r>+", { noremap = true })

-- better seach word under cursor in current buffer
vim.keymap.set("n", "*", ":let @/= '\\<' . expand('<cword>') . '\\>' | set hls<CR>", { noremap = true, silent = true })

-- paste and format
vim.keymap.set("n", "p", "pV=", { noremap = true })

-- search and replace
vim.keymap.set("n", "sr", ":%s///g<Left><Left><Left>", { noremap = true })
vim.keymap.set("v", "sr", ":<C-u>'<,'>s///g<Left><Left><Left>", { noremap = true })

vim.api.nvim_create_user_command("CF", function() vim.cmd("e " .. vim.env.MYVIMRC) end, {})
vim.api.nvim_create_user_command("BC", function() print(#vim.fn.getbufinfo({buflisted = 1})) end, {})

-- improve quickfix window
vim.api.nvim_create_autocmd("FileType", {
	pattern = "qf",
	callback = function()
		vim.keymap.set("n", "<CR>", "<CR>", { buffer = true })
vim.keymap.set("n", "<C-o>", "<CR>", { buffer = true })
		vim.keymap.set("n", "o", "<CR>", { buffer = true })
		vim.opt_local.cursorline = true
	end,
})

-- make sure some filetypes has tab size 2
local ft_opts = { tabstop = 4, shiftwidth = 4, softtabstop = 4, expandtab = false }
for _, ft in ipairs({ "rust", "go", "python", "swift", "zig" }) do
  vim.api.nvim_create_autocmd("FileType", {
    pattern = ft,
    callback = function()
      vim.opt_local.tabstop = ft_opts.tabstop
      vim.opt_local.shiftwidth = ft_opts.shiftwidth
      vim.opt_local.softtabstop = ft_opts.softtabstop
      vim.opt_local.expandtab = ft_opts.expandtab
    end,
  })
end

-- function for sizing float windows
local function floatWinConfig(width_ratio, height_ratio)
	return function()
		local columns = vim.o.columns
		local lines = vim.o.lines
		local cmdheight = vim.o.cmdheight
		return {
			style = "minimal",
			border = "rounded",
			relative = "editor",
			width = math.floor(columns * width_ratio),
			height = math.floor((lines - cmdheight) * height_ratio),
			row = ((lines - ((lines - cmdheight) * height_ratio)) / 2) - cmdheight,
			col = (columns - (columns * width_ratio)) / 2,
		}
	end
end

-- check if mapping exists
function is_map_exists(mode, lhs)
  local maps = vim.api.nvim_get_keymap(mode)
  for _, map in ipairs(maps) do if map.lhs == lhs then return true end end
  return false
end

-- install lazy.nvim plugin manager if not installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({ "git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", lazypath })
end
vim.opt.rtp:prepend(lazypath)

-- install and configure plugins
require("lazy").setup({
	{ "nvim-lua/plenary.nvim" },
	{ "nvim-tree/nvim-web-devicons" },

	{
		"jiangmiao/auto-pairs",
		config = function()
			vim.g.AutoPairsMultilineClose = 0
		end
	},

	{
		"nvim-treesitter/nvim-treesitter",
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },
				auto_install = false,
				highlight = { enable = true, additional_vim_regex_highlighting = false },
				indent = { enable = true }
			})
		end,
	},

	{
		"nvim-treesitter/playground",
		init = function()
			vim.api.nvim_create_user_command("H", function() vim.cmd("TSHighlightCapturesUnderCursor") end, {})
		end,
		lazy = true, cmd = { "TSHighlightCapturesUnderCursor" }
	},

	{
		"petertriho/nvim-scrollbar",
		lazy = false,
		dependencies = { "kevinhwang91/nvim-hlslens" },
		config = function()
			require("scrollbar.handlers.search").setup({ override_lens = function() end })

			require("scrollbar").setup({
				-- throttle_ms = 50,
				handle = {
					blend = 50, -- Integer between 0 and 100. 0 for fully opaque and 100 to full transparent. Defaults to 30.
					highlight = "CocHighlightText",
				},
				handlers = {
					cursor = false,
					diagnostic = false,
					search = false,
				},
				marks = {
					Search = {
						text = { "-", "=" },
						priority = 1,
						gui = nil,
						color = nil,
						cterm = nil,
						color_nr = nil, -- cterm
						highlight = "Search",
					},
				}
			})
		end,
	},

	{
		"tpope/vim-commentary",
		config = function()
			vim.keymap.set("v", "<C-c>", "<Plug>Commentary", { silent = true })
			vim.keymap.set("n", "<C-c>", "<Plug>CommentaryLine", { silent = true })
		end,
	},

	{
		"f-person/git-blame.nvim",
		init = function()
			vim.api.nvim_create_user_command("BL", function() vim.cmd("GitBlameToggle") end, {})
		end,
		config = function()
			require("gitblame").setup({ enabled = false })
		end,
		lazy = true, cmd = { "GitBlameToggle" },
	},

	{
		"kyazdani42/nvim-tree.lua",
		init = function()
			vim.keymap.set("n", "<C-n>", ":NvimTreeFindFileToggle<CR>", { silent = true, noremap = true })
		end,
		config = function()
			require("nvim-tree").setup({
				on_attach = function(bufnr)
					local function opts(desc)
						return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
					end
					require("nvim-tree.api").config.mappings.default_on_attach(bufnr)
					vim.keymap.set("n", "<ESC>", require("nvim-tree.api").tree.close, opts("close"))
				end,
				git = { enable = false },
				view = {
					float = { enable = true, open_win_config = floatWinConfig(0.5, 0.9) },
					width = function() return math.floor(vim.opt.columns:get() * 0.5) end,
				},
				renderer = {
					icons = {
						git_placement = "after",
						glyphs = {
							git = { unstaged = "M", staged = "M", renamed = "U", unmerged = "?", untracked = "U", deleted = "D", ignored = "I" },
							folder = { arrow_closed = "", arrow_open = "" }
						}
					}
				},
				filters = { custom = { ".DS_Store" } }
			})
		end,
		lazy = true, cmd = { "NvimTreeFindFileToggle" },
	},

	{
		"ctrlpvim/ctrlp.vim",
		config = function()
			vim.g.ctrlp_match_window = "bottom,order:btt,min:1,max:15,results:50"
			vim.g.ctrlp_working_path_mode = ""
			vim.g.ctrlp_prompt_mappings = {
				["AcceptSelection('h')"] = { "<c-h>" },
				["AcceptSelection('v')"] = { "<c-v>" },
				["AcceptSelection('e')"] = { "<c-o>", "<cr>" },
			}
			vim.g.ctrlp_show_hidden = 1

			vim.g.ctrlp_custom_ignore = {
				dir  = [[\v[\/](\.git|hg|svn|node_modules|.vite)$]],
				file = [[\v\.(exe|so|dll)$]],
			}
			vim.g.ctrlp_mruf_exclude = "/tmp/.*\\|/temp/.*\\|node_modules/.*\\|\\.vite/.*\\|\\.git/.*"

			vim.keymap.set("n", "<C-m>", ":CtrlPMRUFiles<CR>", { silent = true })

			vim.api.nvim_create_user_command("CC", function() vim.cmd("!rm -rf ~/.cache/ctrlp") end, {})
		end,
	},

	{
		"duane9/nvim-rg",
		config = function()
			vim.g.rg_command = "rg --vimgrep --smart-case --fixed-strings --ignore"
			vim.keymap.set("n", "<C-f>", function() vim.api.nvim_feedkeys(":Rg ", "n", false) end, { noremap = true })
		end
	},

	{
		"stevearc/aerial.nvim",
		init = function()
			vim.keymap.set("n", "<C-t>", ":AerialToggle<CR>", { silent = true, noremap = true })
		end,
		config = function()
			require("aerial").setup({
				backends = { "treesitter" },
				lsp = { diagnostics_trigger_update = false },
				close_on_select = true,
				close_automatic_events = { "unfocus", "switch_buffer", "unsupported" },
				highlight_on_hover = true,
				attach_mode = "global",
				show_guides = true,
				layout = { width = 50, min_width = 30, max_width = 50, default_direction = "float" },
				float = { override = floatWinConfig(0.4, 0.8), },
				guides = { mid_item = "├─ ", last_item = "└─ ", nested_top = "│ ", whitespace = "  " },
				filter_kind = {
					"Array", "Class", "Constructor", "Enum", "EnumMember", "Event", "Field", "Function",
					"Interface", "Method", "Module", "Object", "Package", "Property", "Collapsed"
				},
				keymaps = {
					["<CR>"] = "actions.jump",
					["o"] = "actions.jump",
					["p"] = "actions.scroll",
					["j"] = "actions.down_and_scroll",
					["k"] = "actions.up_and_scroll",
					["<ESC>"] = "actions.close",
					["<c-h>"] = "actions.close",
					["<c-l>"] = "actions.close",
					["<c-n>"] = "actions.close",
				},
			})
		end,
		lazy = true, cmd = { "AerialToggle" },
	},

	{
		"norflin321/tsc.nvim",
		init = function()
			vim.keymap.set("n", "<c-e>", ":TSC<CR>", { silent = true })
		end,
		config = function()
			require("tsc").setup({ pretty_error = false })
		end,
		lazy = true, cmd = { "TSC" },
	},

	{
		"ThePrimeagen/refactoring.nvim",
		init = function()
			vim.keymap.set("n", "fi", ":Refactor inline_var<CR>", { silent = true })
		end,
		config = function()
			require("refactoring").setup({})
		end,
		lazy = true, cmd = { "Refactor" },
	},

	{
		"neoclide/coc.nvim",
		branch = "release",
		config = function()
			-- Try to disable built-in LSP
			vim.lsp.start_client = function() return {} end
			if is_map_exists("n", "gri") then vim.keymap.del("n", "gri") end
			if is_map_exists("n", "grr") then vim.keymap.del("n", "grr") end
			if is_map_exists("n", "gra") then vim.keymap.del("n", "gra") end
			if is_map_exists("x", "gra") then vim.keymap.del("x", "gra") end
			if is_map_exists("n", "grn") then vim.keymap.del("n", "grn") end

			vim.g.coc_list_preview_filetype = 1
			vim.g.coc_global_extensions = {
				"coc-json",
				"coc-tsserver",
				"coc-go",
				"coc-lua",
				"coc-eslint",
				"coc-rust-analyzer",
				"coc-phpls",
				"coc-zig"
			}

			local function show_documentation()
				local ft = vim.bo.filetype
				if ft == "vim" or ft == "help" then
					vim.cmd("h " .. vim.fn.expand("<cword>"))
				else
					vim.fn.CocActionAsync("doHover")
				end
			end

			vim.keymap.set("n", "<C-LeftMouse>", "<Plug>(coc-definition)", {})
			vim.keymap.set("n", "K", show_documentation, { silent = true })
			vim.keymap.set("n", "gd", "<Plug>(coc-definition)", { silent = true })
			vim.keymap.set("n", "gi", "<Plug>(coc-implementation)", { silent = true })
			vim.keymap.set("n", "gr", "<Plug>(coc-references)", { silent = true })
			vim.keymap.set("n", "gy", "<Plug>(coc-type-definition)", { silent = true })
			vim.keymap.set("n", "gn", "<Plug>(coc-rename)", { silent = true })
			vim.keymap.set("n", "gf", "<Plug>(coc-fix-current)", { silent = true })
			vim.keymap.set("n", "<C-d>", "<Plug>(coc-diagnostic-next-error)", { silent = true })

			vim.cmd [[
			func! s:check_back_space() abort
			let col = col(".") - 1
			return !col || getline(".")[col - 1]  =~# "\s"
			endfunc

			imap <silent><expr> <C-j> coc#pum#visible() ? coc#pum#next(1) : "\<C-j>"
			imap <silent><expr> <C-k> coc#pum#visible() ? coc#pum#prev(1) : "\<C-k>"
			imap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#confirm() : <SID>check_back_space() ? "\<TAB>" : coc#refresh()
			]]

			vim.api.nvim_create_autocmd("CursorHold", { pattern = "*", callback = function() vim.fn.CocActionAsync("highlight") end })
			vim.api.nvim_create_autocmd("BufWritePre", { pattern = "*.go", callback = function() vim.fn.CocAction("runCommand", "editor.action.organizeImport") end })
		end,
	},

	{
		"chrisgrieser/nvim-chainsaw",
		config = function()
			require("chainsaw").setup({
				marker = "->",
				logStatements = {
					variableLog = {
						go = 'Print("{{marker}} {{var}}:", {{var}});',
					},
				},

				visuals = {
					icon = "",
					nvimSatelliteIntegration = { enabled = false },
				},
			})

			vim.keymap.set("n", "fp", require("chainsaw").variableLog, { silent = true })
		end
	},
})

-- statusline
vim.cmd([[
	function! GetCocErrors() abort
		if !get(g:, "coc_service_initialized", 0) || !exists("*coc#rpc#ready")
			return ""
		endif

		let l:info = get(b:, "coc_diagnostic_info", {})
		if empty(l:info)
			return ""
		endif

		let l:errors = get(l:info, "error", 0)

		if l:errors == 0
			return ""
		endif

		return "E:" . l:errors . " "
	endfunction

	set statusline=%f%{&modified?'\ [+]\ ':''}%r%=%#StatusLineErrors#%{GetCocErrors()}%#StatusLine#\ %-5.(%l,%c%)\ %L
]])
