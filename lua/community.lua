-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  -- import/override with your plugins folder
  { import = "astrocommunity.pack.vue" },                 -- vue支持
  { import = "astrocommunity.media.image-nvim" },         -- 图片显示支持
  { import = "astrocommunity.motion.mini-move" },         -- 单/多行移动支持
  { import = "astrocommunity.pack.eslint" },              -- eslint支持
  { import = "astrocommunity.diagnostics.trouble-nvim" }, -- 诊断列表优化支持

}
