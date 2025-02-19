require("nvim-treesitter.configs").setup({
	auto_install = true,
	highlight = {
		enable = true
	}
})

local function floatWinConfig(width_ration, height_ration)
	return function()
		local screen_w = vim.opt.columns:get()
		local screen_h = vim.opt.lines:get() - vim.opt.cmdheight:get()
		local window_w = screen_w * width_ration
		local window_h = screen_h * height_ration
		local window_w_int = math.floor(window_w)
		local window_h_int = math.floor(window_h)
		local center_x = (screen_w - window_w) / 2
		local center_y = ((vim.opt.lines:get() - window_h) / 2) - vim.opt.cmdheight:get()
		return {
			border = "rounded",
			relative = "editor",
			row = center_y,
			col = center_x,
			width = window_w_int,
			height = window_h_int,
			style = "minimal",
		}
	end
end

local function my_on_attach(bufnr)
	local api = require "nvim-tree.api"
	local function opts(desc)
		return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
	end
	api.config.mappings.default_on_attach(bufnr)
	vim.keymap.set('n', '<ESC>', api.tree.close, opts("close"))
end

require("nvim-tree").setup({
	on_attach = my_on_attach,
	git = { enable = false },
	view = {
		float = {
			enable = true,
			open_win_config = floatWinConfig(0.5, 0.9)
		},
		width = function()
			return math.floor(vim.opt.columns:get() * 0.5)
		end,
	},
	renderer = {
		icons = {
			git_placement = "after",
			glyphs = {
				git = {
					unstaged = "M",
					staged = "M",
					renamed = "U",
					unmerged = "?",
					untracked = "U",
					deleted = "D",
					ignored = "I",
				},
				folder = {
					arrow_closed = "",
					arrow_open = ""
				}
			}
		}
	},
	filters = {
		custom = { ".DS_Store" }
	}
})

require("aerial").setup({
	backends = { "treesitter" },
	lsp = {
		diagnostics_trigger_update = false
	},
	close_on_select = true,
	close_automatic_events = { "unfocus", "switch_buffer", "unsupported" },
	highlight_on_hover = true,
	attach_mode = "global",
	show_guides = true,
	layout = {
		width = 50,
		min_width = 30,
		max_width = 50,
		default_direction = "float",
	},
	float = {
		override = floatWinConfig(0.4, 0.8),
	},
	guides = {
		mid_item = "├─ ",
		last_item = "└─ ",
		nested_top = "│ ",
		whitespace = "  ",
	},
	filter_kind = {
		"Array",
		"Class",
		"Constructor",
		"Enum",
		"EnumMember",
		"Event",
		"Field",
		"Function",
		"Interface",
		"Method",
		"Module",
		"Object",
		"Package",
		"Property",
		"Collapsed"
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

-- Workaround for https://github.com/stevearc/aerial.nvim/issues/331
vim.keymap.set("n", "<c-t>", function()
	require('aerial').refetch_symbols()
	vim.cmd.AerialOpen 'float'
	vim.cmd.doautocmd 'BufWinEnter'
end)

require("satellite").setup({
	current_only = false,
	winblend = 0,
	handlers = {
		cursor = { enable = false },
		marks = { enable = false },
		diagnostic = { enable = false },
		gitsigns = { enable = false },
		search = { enable = true },
	},
})

require("hbac").setup({
	autoclose = true, -- set autoclose to false if you want to close manually
	threshold = 5, -- hbac will start closing unedited buffers once that number is reached
	close_command = function(bufnr)
		vim.api.nvim_buf_delete(bufnr, {})
	end,
	close_buffers_with_windows = false, -- hbac will close buffers with associated windows if this option is `true`
})

require("nvim-gps").setup({})

require("chainsaw").setup({
	marker = "--",
	visuals = {
		icon = "",
		lineHlgroup = false,
		nvimSatelliteIntegration = {
			enabled = false,
		},
	},
	logStatements = {
		variableLog = {
			go = "spew.Dump({{var}})"
		},
	},
})
vim.keymap.set({ "n", "x" }, "fp", function() require("chainsaw").variableLog() end, { desc = "chainsaw" })

-- local telescope
local telescope_actions = require("telescope.actions")
local telescope_mappings = {
	["<C-j>"] = telescope_actions.move_selection_next,
	["<C-k>"] = telescope_actions.move_selection_previous,
	["<esc>"] = function(buf)
		telescope_actions.close(buf)
		vim.cmd("noh")
	end,
	["<CR>"] = function(buf)
		telescope_actions.select_default(buf)
		vim.cmd("noh")
	end,
}

require("telescope").setup({
	extensions = {
		coc = {
			prefer_locations = false,
			push_cursor_on_edit = true,
		}
	},
	defaults = {
		initial_mode = "insert",
		show_line = false,
		layout_strategy = "horizontal",
		layout_config = {
			width = 0.95,
			height = 0.95,
			horizontal = { preview_width = 0.775 },
		},
		mappings = {
			i = telescope_mappings,
			n = telescope_mappings,
		},
	},
	pickers = {
		live_grep = {
			layout_strategy = "vertical",
			layout_config = { vertical = { preview_height = 0.7 } }
		},
		find_files = {
			layout_config = { horizontal = { preview_width = 0.6 } }
		},
		oldfiles = {
			layout_config = { horizontal = { preview_width = 0.6 } }
		}
	},
})
require("telescope").load_extension("coc")

vim.keymap.set("v", "<c-f>", function()
	function vim.getVisualSelection()
		vim.cmd('noau normal! "vy"')
		local text = vim.fn.getreg('v')
		vim.fn.setreg('v', {})
		text = string.gsub(text, "\n", "")
		if #text > 0 then
			return text
		else
			return ''
		end
	end
	require('telescope.builtin').live_grep({ default_text = vim.getVisualSelection() })
end, { noremap = true, silent = true })
