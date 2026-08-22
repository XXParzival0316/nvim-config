local opt = vim.opt

-- 行Line
opt.number = true -- 行号
opt.relativenumber = true -- 相对行号
opt.cursorline = true -- 光标行高亮
opt.wrap = false --长行不自动折行

-- 缩进Tab
opt.tabstop = 4 --tab宽度   
opt.shiftwidth = 4 -- 自动缩进空格数
opt.expandtab = true-- tab 转 空格 

-- 搜索Search
opt.ignorecase = true -- 大小写不敏感
opt.smartcase = true --自动开启大小写敏感(有大写时)

-- 分屏Split
opt.splitright = true -- 垂直默认右
opt.splitbelow = true -- 水平默认下

-- 文件File
opt.fileencoding = "utf-8" -- 保存文件编码
opt.fileencodings = "ucs-bom,utf-8,gbk,cp936" -- 读文件时,多编码尝试


-- 其他Others
opt.termguicolors = true -- 开启24-bit RGB
opt.clipboard = "unnamedplus"
opt.mouse = "a"



