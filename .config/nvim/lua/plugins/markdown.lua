require("render-markdown").setup({
    heading = {
        -- sign = false,
        -- icons = {'', '', '', '', '', ''},
    },
    quote = {
        repeat_linebreak = true,
    },
    code = {
        enabled = true,
        language = false,
        left_pad = 1,
        right_pad = 1,
        -- language_icon = true,
        -- position = 'right',
        -- border = 'thin',
    }
})
