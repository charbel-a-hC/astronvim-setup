if true then return {} end -- WARN REMOVE THIS LINE TO ACTIVATE THIS FILE
return {
  "akinsho/bufferline.nvim",
  event = "VeryLazy",
  opts = function()
    local function get_hl_color(name, attr)
      local hl = vim.api.nvim_get_hl_by_name(name, true)
      if hl[attr] then return string.format("#%06x", hl[attr]) end
    end

    local normal_bg = get_hl_color("Normal", "background") or "#000000"
    local tabline_bg = get_hl_color("TabLine", "background") or "#1a1b26"
    local comment_fg = get_hl_color("Comment", "foreground") or "#565f89"

    local highlights = {
      fill = { bg = normal_bg },
      background = { bg = normal_bg },
      tab = { bg = normal_bg },
      tab_selected = { bg = tabline_bg, fg = "white", bold = true },
      buffer_visible = { bg = normal_bg },
      buffer_selected = { bg = tabline_bg, fg = "white", bold = true, italic = false },
      close_button = { fg = comment_fg, bg = normal_bg },
      close_button_visible = { fg = comment_fg, bg = normal_bg },
      close_button_selected = { fg = "white", bg = tabline_bg },
      separator = { fg = normal_bg, bg = normal_bg },
      separator_visible = { fg = normal_bg, bg = normal_bg },
      separator_selected = { fg = normal_bg, bg = tabline_bg },
      indicator_selected = { fg = tabline_bg, bg = tabline_bg },
      modified = { fg = get_hl_color("String", "foreground") or "#9ece6a" },
      modified_visible = { fg = get_hl_color("String", "foreground") or "#9ece6a" },
      modified_selected = { fg = "white" },
      duplicate = { fg = comment_fg, bg = normal_bg, italic = true },
      duplicate_visible = { fg = comment_fg, bg = normal_bg, italic = true },
      duplicate_selected = { fg = "white", bg = tabline_bg, italic = false },
      buffer = { bg = normal_bg },
      diagnostic = { bg = normal_bg },
      diagnostic_visible = { bg = normal_bg },
      diagnostic_selected = { bg = tabline_bg },
      hint = { bg = normal_bg },
      hint_visible = { bg = normal_bg },
      hint_selected = { bg = tabline_bg },
      info = { bg = normal_bg },
      info_visible = { bg = normal_bg },
      info_selected = { bg = tabline_bg },
      warning = { bg = normal_bg },
      warning_visible = { bg = normal_bg },
      warning_selected = { bg = tabline_bg },
      error = { bg = normal_bg },
      error_visible = { bg = normal_bg },
      error_selected = { bg = tabline_bg },
    }

    return {
      options = {
        mode = "buffers",
        separator_style = "slant",
        tab_size = 18,
        max_name_length = 18,
        truncate_names = true,
        color_icons = true,
        show_buffer_icons = true,
        show_buffer_close_icons = true,
        show_close_icon = false,
        show_tab_indicators = true,
        enforce_regular_tabs = false,
        always_show_bufferline = true,
        sort_by = "directory",
        offsets = {
          { filetype = "neo-tree", text = "File Explorer", highlight = "Directory", separator = true },
        },
        diagnostics = "nvim_lsp",
        diagnostics_indicator = function(count, level)
          local icon = level:match "error" and " " or (level:match "warning" and " " or "")
          return " " .. icon .. count
        end,
        themable = true,
        hover = {
          enabled = true,
          delay = 200,
          reveal = { "close" },
        },
      },
      highlights = highlights,
    }
  end,
  config = function(_, opts) require("bufferline").setup(opts) end,
}
