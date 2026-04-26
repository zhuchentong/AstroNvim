-- Overseer：任务运行器，用于管理和执行异步任务（如构建、测试等）
return {
  -- Overseer 插件配置（由 astrocommunity.code-runner.overseer-nvim 引入）
  {
    "stevearc/overseer.nvim",
    opts = {},
  },
  -- 通过 AstroCore 注册快捷键，保持统一管理
  {
    "AstroNvim/astrocore",
    opts = {
      mappings = {
        n = {
          -- 打开 Overseer 面板并运行任务
          ["<Leader>or"] = { "<Cmd>OverseerToggle<CR><Cmd>OverseerRun<CR>", desc = "Overseer Run" },
          -- 打开 Overseer 面板并启动 Shell
          ["<Leader>os"] = { "<Cmd>OverseerToggle<CR><Cmd>OverseerShell<CR>", desc = "Overseer Shell" },
          -- 切换 Overseer 任务面板显示/隐藏
          ["<Leader>ot"] = { "<Cmd>OverseerToggle<CR>", desc = "Overseer Toggle" },
        },
      },
    },
  },
}
