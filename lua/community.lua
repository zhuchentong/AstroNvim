-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- 在 `lazy_setup.lua` 中引入此文件，优先于 `plugins/` 目录加载，
-- 确保社区插件规格在用户自定义插件之前被处理。

---@type LazySpec
return {
  "AstroNvim/astrocommunity", -- AstroCommunity 社区插件集合，提供各类预配置插件包
  { import = "astrocommunity.pack.lua" },                 -- Lua 开发包：LSP、格式化、补全等完整 Lua 开发环境
  -- import/override with your plugins folder
  { import = "astrocommunity.pack.vue" },                 -- Vue 开发包：Vue 语言服务、语法高亮等
  { import = "astrocommunity.media.image-nvim" },         -- 图片显示支持：在终端中预览图片
  { import = "astrocommunity.motion.mini-move" },         -- 单/多行移动支持：使用快捷键上下移动行或选中块
  { import = "astrocommunity.pack.eslint" },              -- ESLint 支持包：集成 ESLint 代码检查
  { import = "astrocommunity.diagnostics.trouble-nvim" }, -- 诊断列表优化：提供结构化的诊断信息面板（问题、警告、错误一览）
  { import = "astrocommunity.motion.flash-nvim" },        -- Flash 跳转支持：快速跳转到页面内任意位置
  { import = "astrocommunity.code-runner.overseer-nvim" }, -- 任务运行器：管理和执行异步任务（如构建、测试等）
}
