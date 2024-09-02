return {
    {
        'nvim-treesitter/nvim-treesitter-context',
        config = function()
            require'treesitter-context'.setup{
                enable = true, -- Enable this plugin (Can be enabled/disabled later via commands)
                max_lines = 0, -- How many lines the window should span. Values <= 0 mean no limit.
                trim_scope = 'outer', -- Which context lines to discard if `max_lines` is exceeded. Choices: 'inner', 'outer'
                min_window_height = 0, -- Minimum editor window height to enable context. Values <= 0 mean no limit.
                patterns = { -- Match patterns for TS nodes. These get wrapped to match at word boundaries.
                    -- For all filetypes
                    default = {
                        'class',
                        'function',
                        'method',
                    },
                    -- Patterns for specific filetypes
                    tex = {
                        'chapter',
                        'section',
                        'subsection',
                        'subsubsection',
                    },
                    rust = {
                        'impl_item',
                        'struct',
                        'enum',
                    },
                    scala = {
                        'object_definition',
                    },
                    vhdl = {
                        'process_statement',
                        'architecture_body',
                        'entity_declaration',
                    },
                    markdown = {
                        'section',
                    },
                    elixir = {
                        'anonymous_function',
                        'function',
                        'block',
                        'do_block',
                        'if',
                        'case',
                        'cond',
                        'unless',
                        '->',
                    },
                    json = {
                        'pair',
                    },
                    yaml = {
                        'block_mapping_pair',
                    },
                },
                exact_patterns = {},
                zindex = 20, -- The Z-index of the context window
                mode = 'cursor',  -- Line used to calculate context. Choices: 'cursor', 'topline'
                separator = nil, -- Separator between context and content. Should be a single character string, like '-'.
                on_attach = nil, -- (fun(buf: integer): boolean) return false to disable attaching
            }
        end
    }
}
