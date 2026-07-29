-- 自动命令配置
return {
  -- 仅在打开 dashboard 欢迎页时自动打开 neo-tree 文件浏览器
  auto_open_neotree = {
    {
      event = "User",
      pattern = "SnacksDashboardOpened",
      desc = "Auto open neo-tree on dashboard",
      callback = function()
        if vim.g.vscode then return end
        vim.schedule(function() vim.cmd "Neotree show" end)
      end,
    },
  },
  -- C/C++ 单文件一键编译运行（buffer-local <F5>）
  -- - 仅在 C/C++ 缓冲区生效，不影响其他语言的 <F5>（AstroNvim 调试器）。
  -- - C/C++ 调试仍可用 <Leader>dc（AstroNvim 默认）。
  cpp_run_f5 = {
    {
      event = "FileType",
      pattern = { "c", "cpp", "cxx", "cc" },
      desc = "C/C++: <F5> 编译并运行（底部终端）",
      callback = function(args)
        vim.keymap.set("n", "<F5>", function()
          local src = vim.fn.expand "%:p"
          local out = vim.fn.expand "%:p:r"
          if src == "" then
            vim.notify("没有可编译的文件", vim.log.levels.WARN)
            return
          end
          vim.cmd "silent! write"
          -- 复用上一个输出窗口，避免堆叠
          if vim.g.cpp_run_win and vim.api.nvim_win_is_valid(vim.g.cpp_run_win) then
            pcall(vim.api.nvim_win_close, vim.g.cpp_run_win, true)
          end
          -- 编译 + 运行；编译失败时 && 短路，仅显示 g++ 错误
          vim.cmd(string.format("botright 10split | terminal g++ -Wall -g '%s' -o '%s' && '%s'", src, out, out))
          local win = vim.api.nvim_get_current_win()
          local buf = vim.api.nvim_get_current_buf()
          vim.g.cpp_run_win = win
          -- 停留正常模式，按 q 关闭输出窗口
          vim.keymap.set("n", "q", "<Cmd>bd!<CR>", { buffer = buf, silent = true, desc = "关闭运行输出" })
          vim.cmd "stopinsert"
        end, { buffer = args.buf, desc = "C/C++: 编译并运行" })
      end,
    },
  },
}
