# AGENTS.md

AstroNvim v6+ 的个人 Neovim 用户配置（非插件、非库）。`init.lua` 仅引导 `lazy.nvim`，随后 `lua/lazy_setup.lua` 按顺序导入：`AstroNvim` → `community`（lua/community.lua）→ `plugins`（lua/plugins/）。**除非必要，不要改 `init.lua`。**

## 架构约定（重要）

AstroNvim 的「拆分配置」模式，全仓库统一遵循：

- `lua/plugins/<area>.lua` 返回一个 LazySpec，形如 `return { "AstroNvim/astrocore", opts = require "user.core" }`。
- `lua/user/<area>/init.lua` 聚合该领域的子模块（`options` / `mappings` / `autocmds` / ...），被 `opts = require` 引入。
- 已有领域：`user.core`（astrocore）、`user.lsp`（astrolsp）、`user.ui`（astroui）、`user.functions`（工具函数）。

**新增插件** → 在 `lua/plugins/` 新建一个返回 LazySpec 的文件。
**修改 AstroNvim 核心插件的 opts** → 编辑对应的 `lua/user/<area>/` 子模块，不要直接改 `lua/plugins/` 里的 spec。

AstroNvim 用 `opts_extend` / `list_insert_unique` 向默认列表**追加**（servers、ensure_installed、treesitter、none-ls sources），而非替换。新增条目直接 push 即可，无需复制默认值。

## 快捷键放置规则

- 通用键位 → `lua/user/core/keymaps.lua`。
- 某插件专属键位 → 在 `lua/plugins/<plugin>.lua` 里追加**第二个** `astrocore` spec（参考 `overseer.lua`、`trouble.lua`、`toggleterm.lua`）。这是本仓库既定模式。

Leader = `<Space>`，LocalLeader = `,`。

## 工具链 / 格式化 / Lint

- **格式化**：StyLua，配置见 `.stylua.toml`（2 空格、列宽 120、AutoPreferDouble、无 call parens、collapse simple Always）。这是强制风格。
- **lua_ls 格式化已禁用**（`.luarc.json` 中 `format.enable = false`），格式化统一走 StyLua。
- **Lint**：selene，使用 neovim 标准库（`selene.toml` + `neovim.yml`）。已放宽 `global_usage`、`mixed_table` 等 vim API 常见告警。
- **验证**：无测试套件。改动后用 `nvim --headless` 冒烟、或 `selene lua/` + `stylua --check lua/` 检查。

## 文件 / 产物

- `lazy-lock.json` **已 gitignore**，是本地生成物——不要提交。
- 注释和提交信息一律用**中文**；提交遵循 Conventional Commits（`feat:` / `fix:` / `docs:` / `refactor:` …），无 emoji。

## 已记录的 workaround（改相关代码前必读）

- **MoonBit LSP 覆盖**（`lua/community.lua`）：astrocommunity 的 moonbit 包用旧命令名 `moonbit-lsp` 做守卫，但实际装的是 `moon-lsp`，导致 LSP 被误禁。已用 `opts = function(_, opts) opts.lsp = {} end` 强制启用。上游修复后可删。
- **gd 去重**（`lua/user/lsp/mappings.lua`）：Vue 文件 vue_ls + vtsls 双挂会产生重复定义条目，`gd` 已按 `filename:lnum:col` 去重；单条直接跳转，多条才弹选择。
- **ESLint 保存时自动修复**（`lua/user/lsp/on_attach.lua`）：为 `eslint` server 注册 `BufWritePre` → `eslint.applyAllFixes`。
- **禁用 `<C-m>` 映射**：终端中 `<C-m>` 与 `<CR>` 是同一字节 (0x0D)，映射它会劫持回车。本仓库不映射 `<C-m>`。

## 已配置的语言包（community.lua）

lua、vue、svelte、rust、dart (Flutter)、cs、cpp、moonbit；外加 ESLint、trouble、flash、overseer、nvim-spectre、diffview、mini-move。Mason 强制安装：`debugpy`、`tree-sitter-cli`（`lua/plugins/mason.lua`）。
