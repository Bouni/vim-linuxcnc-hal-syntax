" Vim syntax file
" Language: LinuxCNC HAL
" Original Maintainer: Pavel Ruban <apps.pavelruban@gmail.com>
" Adated and modified: Bouni <bouni-github@owee.de>
" Last Change: 2024.09.13

" Quit when a (custom syntax file was already loaded
if exists("b:current_syntax")
    finish
endif

"syn case ignore

:syntax match iniConstant /\(\.\)\@<![A-Z]_\?[0-9]\?/
:syntax match halFunction /[a-zA-Z0-9\-]\+\.[^ ]*/
:syntax match halConstant /0x[0-9A-f]*\|\([a-zA-Z._0-9]\)\@<!-\?\d\+/
:syntax match halSignal /\v(net|sets)@<=(\s|\t)*[^ \t]+>/
:syntax match halThread /\w\+-thread/
:syntax keyword halOperator addf loadrt setp sets net newsig loadusr
:syntax match halSigDir /\v(\=\>|\<\=|\<\=\>)/
:syntax match halComment /^#.*$/
:syntax match halFunction /\<step\>/
:syntax match halFunction /make-pulses/
:syntax match halFunction /motion-command-handler/
:syntax match halFunction /motion-controller/
:syntax match halFunction /capture-position/
:syntax match halFunction /\<update\>/
:syntax match halFunction /update-freq/
:syntax match halFunction /\<write\>/
:syntax match halFunction /\<reset\>/
:syntax match halFunction /\<enable\>/
:syntax match halFunction /spindle-on/
:syntax match halFunction /amp-enable-out/
:syntax match halFunction /\<dir\>/
:syntax match halFunction /\<pin\>/
:syntax match halFunction /\<in\>/
:syntax match halFunction /\<invert\>/
:syntax match halFunction /\<read\>/
:syntax match halFunction /\<out\>/

:syntax match halFunction /\<steplen\>/
:syntax match halFunction /\<stepspace\>/
:syntax match halFunction /\<dirhold\>/
:syntax match halFunction /\<dirsetup\>/
:syntax match halFunction /\<maxaccel\>/
:syntax match halFunction /\<motor-pos-cmd\>/
:syntax match halFunction /\<position-scale\>/

:highlight link iniConstant Type
:highlight link halConstant Constant
:highlight link halOperator Operator
:highlight link halComment Comment
:highlight link halConditional Conditional
:highlight link halRepeat Repeat
:highlight link halFunction Function
:highlight link halOperatorPunc Operator
:highlight link halIdentifier Identifier
:highlight link halFunction Identifier
:highlight link halLabel Label
:highlight link halLineNumbers Label
:highlight link halTodo Todo
:highlight link halMessage SpecialComment
:highlight link halLogOpen SpecialComment
:highlight link halLogClose SpecialComment
:highlight link halLog SpecialComment
:highlight link halPrint SpecialComment
:highlight link halDebug Debug
:highlight link halGCodes Keyword
:highlight link halThread Special
:highlight link halMUserCodes Keyword
:highlight link halAxes SpecialChar
:highlight link halSpecials SpecialChar
:highlight link halFeed SpecialChar
:highlight link halTool SpecialChar
:highlight link halSigDir SpecialChar
:highlight halSignal term=bold ctermfg=LightMagenta gui=bold guifg=#9dd274 cterm=bold
