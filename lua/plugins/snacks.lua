-- 覆盖 AstroNvim 的 snacks.nvim 配置，添加 SVG 格式支持
return {
  "folke/snacks.nvim",
  opts = function(_, opts)
    -- AstroNvim 设置了 opts.image = { doc = { enabled = false } }
    -- 这覆盖了整个 image 配置，所以我们需要重新设置 formats
    -- 保留 AstroNvim 的 doc 设置，但补充完整配置
    -- 确保不覆盖 AstroNvim 已有的 image 配置
    opts.image = opts.image or {}
    -- 添加 svg 到 formats 列表中
    -- snacks 默认 formats 不包含 svg，但它是通过 ImageMagick 渲染的
    opts.image.formats = {
      "png",
      "jpg",
      "jpeg",
      "gif",
      "bmp",
      "webp",
      "tiff",
      "heic",
      "avif",
      "mp4",
      "mov",
      "avi",
      "mkv",
      "webm",
      "pdf",
      "icns",
      "svg", -- 添加 SVG 支持
    }

    -- 可选：启用文档内图片预览（markdown 中的图片等）
    -- 如果不需要，AstroNvim 的 opts.image = { doc = { enabled = false } } 已经禁止了
    -- 要启用的话取消下面注释：
    -- opts.image.doc = opts.image.doc or {}
    -- opts.image.doc.enabled = true
  end,
}
