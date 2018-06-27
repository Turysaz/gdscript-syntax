" GDScript syntax file
" Language: GDScript
" Maintainer: Turysaz
" Latest Revision: 27 June 2018
" License: MIT

if exists("b:current_syntax")
    finish
endif

syn keyword gdKeyword if elif else 
syn keyword gdKeyword for do while
syn keyword gdKeyword is match
syn keyword gdKeyword switch case
syn keyword gdKeyword break continue
syn keyword gdKeyword pass return
syn keyword gdKeyword class extends func enum nextgroup=gdDefinition skipwhite
syn match   gdDefintion '[\w]+[\d\w]' display contained

syn keyword gdKeyword tool export
syn keyword gdKeyword signal
syn keyword gdKeyword static const var
syn keyword gdKeyword onready
syn keyword gdKeyword self
syn keyword gdKeyword setget breakpoint preload yield assert remote master slave sync

syn keyword gdBoolean true false
syn keyword gdConstant PI TAU INF NAN

syn keyword gdTodo contained TODO HACK

" Matches
syn match gdString '\".*\"'
syn match gdString '\'.*\''

syn match gdNumber '[+-]?\d+'
syn match gdNumber '[+-]?\d+\.\d+'


" syn match m_function_call '[\w]+[\d\w]('

syn match gdComment '#.*$' contains=todo

" Regions
syn region r_func_definition start='func' end=':' contains=gdDefinition

let b:current_syntax = "godot"

hi def link gdKeyword         Keyword
hi def link gdConstant         Constant

hi def link gdDefinition        Constant

hi def link gdComment           Comment
hi def link gdTodo              Todo

hi def link gdString        Constant
hi def link gdNumber        Constant
"hi def link m_function_call     Function

hi def link m_func_definition   Constant

