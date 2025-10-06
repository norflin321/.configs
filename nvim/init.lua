vim.cmd("source " .. vim.fn.stdpath("config") .. "/colors.lua")

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
vim.opt.showmode = true
vim.opt.showcmd = false
vim.opt.showtabline = 0
vim.opt.cmdheight = 1
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.lazyredraw = true
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
vim.keymap.set({ "n", "v" }, "f", "<NOP>", { noremap = true })
vim.keymap.set({ "n", "v" }, "F", "<NOP>", { noremap = true })
vim.keymap.set("", "ga", "<NOP>", { noremap = true })
vim.keymap.set("v", "K", "<NOP>", { noremap = true })
vim.keymap.set("n", "<C-z>", "<NOP>", { noremap = true })
vim.keymap.set("n", "<C-t>", "<NOP>", { noremap = true })
vim.keymap.set("n", "s", "<NOP>", { noremap = true })
vim.keymap.set("n", "S", "<NOP>", { noremap = true })
vim.keymap.set("n", "dj", "<NOP>", { noremap = true })
vim.keymap.set("n", "dk", "<NOP>", { noremap = true })
vim.keymap.set("n", "cj", "<NOP>", { noremap = true })
vim.keymap.set("n", "ck", "<NOP>", { noremap = true })
vim.keymap.set("n", "J", "<NOP>", { noremap = true })

-- disable extra fast scrolling while holding Shift
vim.keymap.set("", "<S-ScrollWheelUp>", "<NOP>", { silent = true })
vim.keymap.set("", "<S-ScrollWheelDown>", "<NOP>", { silent = true })
vim.keymap.set("", "<S-ScrollWheelLeft>", "<NOP>", { silent = true })
vim.keymap.set("", "<S-ScrollWheelRight>", "<NOP>", { silent = true })

-- no matter the search direction we should navigate the same
vim.keymap.set({ "n", "x", "o" }, "n", function() return vim.v.searchforward == 0 and "N" or "n" end, { noremap = true, expr = true })
vim.keymap.set({ "n", "x", "o" }, "N", function() return vim.v.searchforward == 0 and "n" or "N" end, { noremap = true, expr = true })

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

-- allow to paste into command line
vim.keymap.set("c", "<C-v>", "<C-r>+", { noremap = true })

-- better seach word under cursor in current buffer
vim.keymap.set("n", "*", ":let @/= '\\<' . expand('<cword>') . '\\>' | set hls<CR>", { noremap = true, silent = true })

-- paste and format
-- vim.keymap.set("n", "p", "pV=", { noremap = true })
vim.keymap.set("n", "p", "p`[V`]=", { noremap = true })

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
		vim.opt_local.scrolloff = 0
		vim.opt_local.sidescrolloff = 0
		vim.opt_local.list = false
		vim.opt_local.number = true
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

vim.api.nvim_create_user_command("FMT", function()
	local ext = vim.fn.expand("%:e")
	if ext == "ts" or ext == "json" or ext == "jsonc" then
		vim.cmd("silent! !npx dprint fmt %")
		vim.cmd("edit!")
	else
		print("not found")
	end
end, {})

local hide_cursor = function()
	io.write("\27[?25l")
	io.flush()
end
local show_cursor = function()
	io.write("\27[?25h")
	io.flush()
end

local is_scrolling = false
local better_scroll = function(dir)
	if is_scrolling == false then
		hide_cursor()
		require("ibl").update({ debounce = 500 })
	end
	is_scrolling = true

	local cur_row, _ = unpack(vim.api.nvim_win_get_cursor(0))

	vim.api.nvim_feedkeys("0", "n", false)

	if dir == 0 then
		local top_row = vim.fn.line("w0") + vim.opt.scrolloff:get()
		local until_top_row = cur_row - top_row

		if until_top_row > 0 then
			vim.api.nvim_feedkeys(until_top_row .. "k", "n", false)
		end

		vim.api.nvim_feedkeys("k", "n", false)
	else
		local bot_row = vim.fn.line("w$") - vim.opt.scrolloff:get()
		local until_bot_row = bot_row - cur_row

		if until_bot_row > 0 then
			vim.api.nvim_feedkeys(until_bot_row .. "j", "n", false)
		end

		vim.api.nvim_feedkeys("j", "n", false)
	end
end
local better_scroll_cleanup = function()
	vim.schedule(function()
		is_scrolling = false
		require("ibl").update({ debounce = 10 })

		show_cursor()
	end)
end

vim.keymap.set("n", "<ScrollWheelUp>", function() better_scroll(0) end, { expr = true })
vim.keymap.set("n", "<ScrollWheelDown>", function() better_scroll(1) end, { expr = true })
vim.keymap.set("", "<LeftMouse>", function() better_scroll_cleanup() return "<LeftMouse>" end, { expr = true })
vim.keymap.set("", "<RightMouse>", function() better_scroll_cleanup() return "<RightMouse>" end, { expr = true })

-- handle Esc press
vim.keymap.set("n", "<Esc>", function()
	better_scroll_cleanup()
	vim.api.nvim_command("noh")
end, { noremap = true, silent = true })

local is_empty_before_cursor = function()
    local _, col = unpack(vim.api.nvim_win_get_cursor(0))
    local current_line = vim.api.nvim_get_current_line()
    local before_cursor = current_line:sub(1, col)
    return before_cursor:match("^%s*$") ~= nil
end

-- function for sizing float windows
local function floatWinConfig(width_ratio, height_ratio, row_ratio, col_ratio)
	return function()
		local row = 0
		local col = 0

		if row_ratio ~= nil then
			row = math.floor(vim.o.lines * row_ratio)
		else
			row = ((vim.o.lines - ((vim.o.lines - vim.o.cmdheight) * height_ratio)) / 2) - vim.o.cmdheight -- centralize
		end

		if col_ratio ~= nil then
			col = math.floor(vim.o.columns * col_ratio)
		else 
			col = (vim.o.columns - (vim.o.columns * width_ratio)) / 2 -- centralize
		end

		return {
			style = "minimal",
			border = "rounded",
			relative = "editor",
			width = math.floor(vim.o.columns * width_ratio),
			height = math.floor((vim.o.lines - vim.o.cmdheight) * height_ratio),
			row = row,
			col = col,
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

	{
		"jiangmiao/auto-pairs",
		config = function()
			vim.g.AutoPairsMultilineClose = 0
		end
	},

	{
		"tpope/vim-commentary",
		config = function()
			vim.keymap.set("v", "<C-c>", "<Plug>Commentary", { silent = true })
			vim.keymap.set("n", "<C-c>", "<Plug>CommentaryLine", { silent = true })
		end,
	},

	{
		"duane9/nvim-rg",
		config = function()
			vim.g.rg_command = "rg --vimgrep --smart-case --fixed-strings --ignore"
			vim.g.rg_run_async = 0

			vim.keymap.set("n", "<c-f>", function()
				local input = vim.fn.input("Find: ")
				if input == "" then return end

				vim.cmd("Rg " .. vim.fn.shellescape(input))
				vim.cmd("silent /" .. input)
			end, { noremap = true })

			vim.keymap.set("v", "<c-f>", function()
				vim.cmd('normal! "xy')
				local input = vim.fn.getreg("x")

				vim.cmd("Rg " .. vim.fn.shellescape(input))
				vim.cmd("silent /" .. input)
			end, { noremap = true })
		end
	},

	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		priority = 100,
		config = function()
			require("nvim-treesitter.configs").setup({
				ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "typescript", "tsx", "html", "javascript", "go", "rust" },
				auto_install = false,
				highlight = { enable = true, additional_vim_regex_highlighting = false, max_file_lines = 0 },
				indent = { enable = true }
			})
		end,
	},

	{
		"petertriho/nvim-scrollbar",
		lazy = false,
		dependencies = { "kevinhwang91/nvim-hlslens" },
		config = function()
			require("scrollbar.handlers.search").setup({ override_lens = function() end })
			vim.api.nvim_set_hl(0, "HlSearchNear", { link = "None" })

			require("scrollbar").setup({
				-- throttle_ms = 50,
				handle = {
					blend = 0, -- Integer between 0 and 100. 0 for fully opaque and 100 to full transparent. Defaults to 30.
				},
				handlers = { cursor = false, diagnostic = true, search = true },
				excluded_buftypes = { "terminal", "nofile" },
				marks = {
					Search = { text = { "━", "━" }, priority = 1, highlight = "ScrollbarMarkSearch" },
					Error = { text = { "●" }, priority = 1, highlight = "Error" },
					Warn = { text = { "" }, priority = 1, highlight = "None" },
					Info = { text = { "" }, priority = 1, highlight = "None" },
					Hint = { text = { "" }, priority = 1, highlight = "None" },
					Misc = { text = { "" }, priority = 1, highlight = "None" },
				}
			})
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
		dependencies = { "nvim-tree/nvim-web-devicons" },
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
					float = { enable = true, open_win_config = floatWinConfig(0.25, 0.9, nil, 0.72) },
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
			vim.g.ctrlp_match_window = "bottom,order:btt,min:1,max:15,results:15"
			vim.g.ctrlp_working_path_mode = ""
			vim.g.ctrlp_prompt_mappings = {
				["AcceptSelection('h')"] = { "<c-h>" },
				["AcceptSelection('v')"] = { "<c-v>" },
				["AcceptSelection('e')"] = { "<c-o>", "<cr>" },
			}
			vim.g.ctrlp_show_hidden = 1
			vim.g.ctrlp_lazy_update = 10 
			vim.g.ctrlp_line_prefix = " "
			vim.g.ctrlp_mruf_max = 15

			vim.g.ctrlp_custom_ignore = {
				dir = [[\v[\/](\.git|hg|svn|node_modules|.vite)$]],
				file = [[\v\.(exe|so|dll)$]],
			}
			vim.g.ctrlp_mruf_exclude = "/tmp/.*\\|/temp/.*\\|node_modules/.*\\|\\.vite/.*\\|\\.git/.*"

			vim.keymap.set("n", "<C-m>", ":CtrlPMRUFiles<CR>", { silent = true })

			vim.api.nvim_create_user_command("CC", function() vim.cmd("!rm -rf ~/.cache/ctrlp") end, {})
		end,
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
				float = { override = floatWinConfig(0.20, 0.9, nil, 0.77) },
				guides = { mid_item = "├─ ", last_item = "└─ ", nested_top = "│ ", whitespace = "  " },
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
				highlight_on_jump = 10,
				post_jump_cmd = "normal! zt",
			})

			-- vim.api.nvim_set_hl(0, "AerialLine", { link = "Cursorline" })
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
		"chrisgrieser/nvim-chainsaw",
		config = function()
			require("chainsaw").setup({
				marker = "->",
				logStatements = {
					variableLog = {
						go = 'println("{{marker}} {{var}}:", {{var}});',
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

	{
		"neovim/nvim-lspconfig",
		version = "v2.4.0",
		lazy = false,
		priority = 100,
		config = function()
			local lspconfig = require("lspconfig")

			-- Try to disable built-in LSP
			if is_map_exists("n", "gri") then vim.keymap.del("n", "gri") end
			if is_map_exists("n", "grr") then vim.keymap.del("n", "grr") end
			if is_map_exists("n", "gra") then vim.keymap.del("n", "gra") end
			if is_map_exists("x", "gra") then vim.keymap.del("x", "gra") end
			if is_map_exists("n", "grn") then vim.keymap.del("n", "grn") end

			-- Configure diagnostics to show virtual text in red for errors
			vim.diagnostic.config({
				virtual_text = {
					severity = { min = vim.diagnostic.severity.ERROR }, -- Show virtual text only for errors (severity = 1)
					format = function(diagnostic) return string.format("%s", diagnostic.message) end, -- Customize the format of the virtual text
					prefix = "●", -- Prefix to make it clear it's an error
					spacing = 1, -- Spacing between code and virtual text
					source = "if_many", -- Source can be shown if desired
				},
				float = false,
				signs = false, -- Show signs in the gutter
				underline = true, -- Underline errors
				update_in_insert = false, -- Don't update diagnostics in insert mode
				severity_sort = true, -- Sort by severity (errors first)
			})

			-- Define a shared on_attach function to set keybindings when LSP attaches to a buffer
			local function on_attach(client, bufnr)
				client.server_capabilities.semanticTokensProvider = nil -- Disable LSP semantic highlighting

				local opts = { buffer = bufnr, noremap = true, silent = true }
				vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
				vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
				vim.keymap.set("n", "gr", function()
					vim.lsp.buf.references(nil, {
						on_list = function(options)
							vim.fn.setloclist(0, {}, " ", options)
							vim.cmd("lopen")
						end,
					})
				end, opts)
				vim.keymap.set("n", "gy", vim.lsp.buf.type_definition, opts)
				vim.keymap.set("n", "gn", vim.lsp.buf.rename, opts)
				vim.keymap.set("n", "gf", function()
					vim.lsp.buf.code_action({ apply = true })
				end, opts)
				vim.keymap.set("n", "<C-d>", function()
					vim.diagnostic.jump({
						count = 1,
						float = { border = "solid", max_width = 120, max_height = 35 },
						severity = vim.diagnostic.severity.ERROR,
					})
				end, opts)

				-- enable highlighting word under cursor
				vim.keymap.set("", "<LeftMouse>", function()
					vim.schedule(function()
						better_scroll_cleanup()
						vim.lsp.buf.document_highlight()
					end)

					return "<LeftMouse>"
				end, { expr = true })

				-- vim.keymap.set("n", "H", vim.lsp.buf.document_highlight, opts)
				if client.server_capabilities.documentHighlightProvider then
					vim.api.nvim_create_autocmd("CursorHold", { buffer = bufnr, callback = vim.lsp.buf.document_highlight })
					vim.api.nvim_create_autocmd("CursorMoved", { buffer = bufnr, callback = vim.lsp.buf.clear_references })
				end

				vim.keymap.set("n", "K", function() vim.lsp.buf.hover({ border = "solid", max_width = 120, max_height = 35 }) end, opts)
			end

			-- npm install -g typescript typescript-language-server
			-- make sure to not open js/ts files inside large diractory, because lsp at the start searches for package.json in cwd
			lspconfig.ts_ls.setup({
				on_attach = on_attach,
				init_options = {
					hostInfo = "neovim",
					preferences = { importModuleSpecifierPreference = "non-relative" }
				},
			})

			-- npm i -g vscode-langservers-extracted
			lspconfig.eslint.setup({ cmd = { "vscode-eslint-language-server", "--stdio" } })

			-- go install golang.org/x/tools/gopls@latest
			lspconfig.gopls.setup({ on_attach = on_attach })

			-- https://zigtools.org/zls/install
			lspconfig.zls.setup({
				cmd = { "/Users/norflin/main/zls" },
				filetypes = { "zig", "zir" },
				root_dir = lspconfig.util.root_pattern("build.zig", ".git") or vim.loop.cwd,
				single_file_support = true,
				on_attach = on_attach
			})

			-- rustup component add rust-analyzer
			lspconfig.rust_analyzer.setup({ on_attach = on_attach })
		end,
	},

	{
		"saghen/blink.cmp",
		version = "1.*",
		opts = {
			keymap = {
				preset = "default",
				["<C-k>"] = { "select_prev", "fallback" },
				["<C-j>"] = { "select_next", "fallback" },
				["<Tab>"] = {
					function(cmp)
						if cmp.is_menu_visible() then
							cmp.accept()
							return true
						elseif is_empty_before_cursor() then
							vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Tab>", true, true, true), "n", true)
							return true
						else
							return false
						end
					end,
					"show"
				},
			},

			completion = {
				menu = {
					min_width = 30,
					max_height = 20,
					draw = { treesitter = { "lsp" } }
				},
				documentation = {
					auto_show = true,
					auto_show_delay_ms = 0,
					window = { max_width = 120, max_height = 35 }
				},
			},
			signature = { enabled = false },
			fuzzy = { implementation = "lua" },
		},
		opts_extend = { "sources.default" }
	},

	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		lazy = false,
		config = function()
			require("ibl").setup({
				enabled = true,
				debounce = 10,
				indent = { char = "▏" },
				whitespace = { remove_blankline_trail = false },
				scope = { enabled = false },
			})
		end,
	},


	{
		"ruifm/gitlinker.nvim",
		config = function()
			require("gitlinker").setup({
				mappings = nil
			})

			vim.api.nvim_create_user_command("GL", function() require("gitlinker").get_buf_range_url("n") end, {})
		end
	},

	{
		-- ColorizerToggle
		"norcalli/nvim-colorizer.lua",
	}
}, { lockfile = "~/.vim/lazy-lock.json" })

vim.cmd([[ set statusline=%f%{&modified?'\ [+]\ ':''}%r%=\ %-5.(%l:%c%)\ %L ]])
