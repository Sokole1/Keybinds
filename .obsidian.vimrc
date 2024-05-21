imap kj <Esc>
unmap <Space>
exmap jump obcommand mrj-jump-to-link:activate-jump-to-anywhere
nmap <Space>; :jump
exmap back obcommand app:go-back
nmap <C-o> :back
exmap forward obcommand app:go-forward
nmap <C-i> :forward
exmap togglefold obcommand editor:toggle-fold
nmap zf :togglefold
nmap j gj
nmap k gk
nmap 0 g0
nmap $ g$

exmap followlink obcommand editor:follow-link
nmap gd :followlink

exmap nextTab obcommand workspace:next-tab
exmap prevTab obcommand workspace:previous-tab
nmap gt :nextTab
nmap gT :prevTab

exmap focusRight obcommand editor:focus-right
nmap <Space>l :focusRight

exmap focusLeft obcommand editor:focus-left
nmap <Space>h :focusLeft

exmap splitEditor obcommand workspace:split-vertical
nmap <Space>w :splitEditor

exmap closeOthers obcommand workspace:close-others
nmap <Space>q :closeOthers

nmap <Space>/ :nohl
exmap omnisearchVault obcommand omnisearch:show-modal
nmap <Space>o :omnisearchVault

exmap closeCurrent obcommand workspace:close
nmap <Space>x :closeCurrent

exmap saveFile obcommand editor:save-file
nmap <Space>s :saveFile

exmap goBack obcommand app:go-back
nmap <Space>j :goBack

exmap goForward obcommand app:go-forward
nmap <Space>k :goForward

exmap commandPalette obcommand command-palette:open
nmap <Space>p :commandPalette

exmap toggleSidebar obcommand window-collapse:collapse-left-sidebar
nmap <Space>e :toggleSidebar

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
