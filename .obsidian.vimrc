imap kj <Esc>
unmap <Space>
exmap jump obcommand mrj-jump-to-link:activate-jump-to-anywhere
nmap <Space>; :jump<CR>
exmap back obcommand app:go-back
nmap <C-o> :back<CR>
exmap forward obcommand app:go-forward
nmap <C-i> :forward<CR>
exmap togglefold obcommand editor:toggle-fold
nmap zf :togglefold<CR>
nmap j gj
nmap k gk
nmap 0 g0<CR>
nmap $ g$<CR>

exmap followlink obcommand editor:follow-link
nmap gd :followlink<CR>

exmap nextTab obcommand workspace:next-tab
exmap prevTab obcommand workspace:previous-tab
nmap gt :nextTab<CR>
nmap gT :prevTab<CR>

exmap focusRight obcommand editor:focus-right
nmap <Space>l :focusRight<CR>

exmap focusLeft obcommand editor:focus-left
nmap <Space>h :focusLeft<CR>

exmap splitEditor obcommand workspace:split-vertical
nmap <Space>w :splitEditor<CR>

exmap closeOthers obcommand workspace:close-others
nmap <Space>q :closeOthers<CR>

nmap <Space>/ :nohl<CR>
exmap omnisearchVault obcommand omnisearch:show-modal
nmap <Space>o :omnisearchVault<CR>
nmap <Space><Space> :omnisearchVault<CR>

exmap closeCurrent obcommand workspace:close
nmap <Space>x :closeCurrent<CR>

exmap saveFile obcommand editor:save-file
nmap <Space>s :saveFile<CR>

exmap goBack obcommand app:go-back
nmap <Space>j :goBack<CR>

exmap goForward obcommand app:go-forward
nmap <Space>k :goForward<CR>

exmap commandPalette obcommand command-palette:open
nmap <Space>p :commandPalette<CR>

exmap toggleSidebar obcommand window-collapse:collapse-left-sidebar
nmap <Space>e :toggleSidebar<CR>

" Yank to system clipboard
set clipboard=unnamed
set tabstop=4
exmap surround_wiki surround [[ ]]
exmap surround_double_quotes surround " "
exmap surround_single_quotes surround ' '
exmap surround_backticks surround ` `

" Yank to system clipboard
set clipboard=unnamed
exmap surround_brackets surround ( )
exmap surround_square_brackets surround [ ]
exmap surround_curly_brackets surround { }
exmap surround_dollar surround $ $
exmap surround_bold surround ** **
exmap surround_italic surround * *

" NOTE: must use 'map' and not 'nmap'
map [[ :surround_wiki
nunmap s
vunmap s
map s" :surround_double_quotes
map s' :surround_single_quotes
map s` :surround_backticks
map s( :surround_brackets
map s) :surround_brackets
map s[ :surround_square_brackets
map s[ :surround_square_brackets
map s{ :surround_curly_brackets
map s} :surround_curly_brackets
map sm :surround_dollar
map sb :surround_bold
map si :surround_italic

