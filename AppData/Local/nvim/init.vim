set hlsearch                        " 高亮度反白
set backspace=2                     " 可隨時用倒退鍵刪除
set ruler                           " 可顯示最後一列的狀態
set showmode                        " 左下角那一列的狀態
set number                          " 顯示行號
set mouse=nvi                       " 使用滑鼠

filetype on                         " 檔案類型檢測
filetype plugin on                  " 根據檔案類型加載插件

syntax enable                       " 打開語法高亮
syntax on                           " 自動語法高亮
"set bg=dark                         " 顯示不同的底色色調
colorscheme catppuccin_mocha        " 語法高亮主題，在 Windows Terminal 裡面可能有問題。
"set cursorline                      " 突出顯示當前 Row
"set cursorcolumn                    " 突出顯示當前 Column

set ignorecase smartcase            " 搜尋時忽略大小寫，但在有一個或以上大寫字母時仍保持對大小寫敏感
set incsearch                       " 輸入搜尋內容時就顯示搜尋結果

set autoindent                      " 自動縮排
set smartindent                     " 換行時智能縮進
set expandtab                       " 空格代替 Tab
set tabstop=4                       " Tab 長度爲4
set softtabstop=4                   " Backspace 一次可以刪除4個空格
set nowrap                          " 禁止自動換行
set encoding=utf8                   " 編碼 UTF-8

set autochdir                       " 自動切換當前目錄
