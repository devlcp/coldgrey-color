"   Author: devlcp
"   Theme: Coldgrey 
"   License: MIT
"   Source: http://github.com/devlcp

set background=dark
let g:colors_name="coldgrey"

lua package.loaded['lush_theme.coldgrey'] = nil

lua require('lush')(require('lush_theme.coldgrey'))
