"カーソルを行頭，行末で止まらないようにする
set whichwrap=b,s,h,l,<,>,[,]

"現在のモードを表示する
set showmode

"開いているファイルのタイプ
"filetype indent plugin on
filetype off

"変更中のファイルでも、保存しないで他のファイルを表示することが出来るようにする
set hidden

"外部のエディタで編集中のファイルが変更されたら、自動的に読み直す
set autoread

"タイプ途中のコマンドを画面最下行に表示
set showcmd

"画面最下行にルーラーを表示する
set ruler

"nvim日本語化け問題
set ttimeout
set ttimeoutlen=50

"ステータスラインの設定
""0:一番下のウィンドウはステータスラインを表示しない
""1:ウィンドウが1つの時はステータスラインを表示しない。2つ以上ある場合は、ステータスラインを表示する
""2:常にステータスラインを表示する
set laststatus=2

"ビープの代わりにビジュアルベル（画面フラッシュ）を使う
set visualbell

"マウスを有効にするモードを設定する。
""n:ノーマルモード
""v:ビジュアルモード
""i:挿入モード
""c:コマンドライン
""h:上の全てのモード（マウスをクリックしてもカーソルは動かない）
""a:上の全てのモード（マウスをクリックするとカーソルが動く）
""r:hit-enter や more-prompt プロンプト
set mouse=a

"クリップボードの動作設定
" set clipboard+=unnamedplus
set clipboard=unnamedplus,unnamed

"コマンドラインに使われるスクリーン上の行数。
set cmdheight=2

"インクリメンタルサーチを行う
set incsearch

" nvimのterminal emulatorでzshを使う
set sh=zsh

" no swapfile
set noswapfile

" backspace
set backspace=indent,eol,start
