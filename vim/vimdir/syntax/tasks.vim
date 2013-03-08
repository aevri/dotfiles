" Vim syntax file
" Language:	tasks
" Maintainer:	Angelos Evripiotis

if exists("b:current_syntax")
  finish
endif

syn keyword taskPerson Angelos
syn match task "^\s*[-+*].*$"
syn match project "^\s*\*\*.*$"
syn match objective "^\s*\*\*\*.*$"
syn match heading "^Inbox$"
syn match heading "^Done Inbox$"
syn match heading "^Backlog Inbox$"
syn match heading "^Objectives$"
syn match heading "^Objectives this week$"
syn match heading "^Backlog$"
syn match heading "^Notes$"
syn match heading "^Now$"
syn match heading "^Soon$"
syn match heading "^Later$"
syn match heading "^Waiting For$"
syn match heading "^Done$"

let b:current_syntax = "tasks"

hi def link taskPerson      Identifier
hi def link unimportant     Comment
hi def link bad             Error
hi def link hi              PreProc
hi def link med             Type
hi def link lo              statement

hi def link task            Statement
hi def link objective       Type
hi def link project         Type
hi def link heading         PreProc
