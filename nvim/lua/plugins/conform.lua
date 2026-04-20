return {
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      -- Ensure table exists
      opts.formatters_by_ft = opts.formatters_by_ft or {}

      -- Ensure terraform filetypes use terraform_fmt
      opts.formatters_by_ft.terraform = { "tofu_fmt" }
      opts.formatters_by_ft.tf = { "tofu_fmt" }

      return opts
    end,
  },
}
