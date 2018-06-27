" GDScript syntax file
" Language: GDScript
" Maintainer: Turysaz
" Latest Revision: 27 June 2018
" License: MIT

if exists("b:current_syntax")
    finish
endif

" Keywords
syn keyword k_flowControl if elif else for do while match switch case break continue pass return
syn keyword k_structure class extends is tool signal func static const enum var onready export setget breakpoint preload yield assert remote master slave sync
syn keyword k_constants self true false PI TAU INF NAN

syn keyword k_todo contained TODO HACK

" Matches
syn match m_lit_string '\".*\"'
syn match m_lit_string '\'.*\''

syn match m_lit_number '[+-]?\d+'
syn match m_lit_number '[+-]?\d+\.\d+'

syn match m_comment '#.*$'
syn match m_todo_note '#.*$' contains=todo

" Regions
"syn region syntaxElementRegion start='x' end='y'

let b:current_syntax = "godot"

hi def link k_flowControl       Keyword
hi def link k_structure         Keyword
hi def link k_constants         Constant
hi def link k_todo              Todo

hi def link m_lit_string        Constant
hi def link m_lit_number        Constant

hi def link m_comment           Comment
hi def link m_todo_note         Comment

