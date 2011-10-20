"=============================================================================
" File:         after\powershell.vim                              {{{1
" Author:       Michael Foukarakis
" Version:      «0.0.1»
" Created:      Wed Oct 19, 2011 09:34 GTB Daylight Time
" Last Update:  Wed Oct 19, 2011 09:36 GTB Daylight Time
"------------------------------------------------------------------------
" Description:
"       «description»
"------------------------------------------------------------------------
" Installation:
"       Drop this file into {rtp}/after
"       Requires Vim7+
" History:      «history»
" TODO:         «missing features»
" }}}1
"=============================================================================
if exists("b:current_syntax")
  finish
endif

let s:cpo_save=&cpo
set cpo&vim
"------------------------------------------------------------------------
" PowerShell doesn't care about case
syn case ignore

" Sync-ing method
syn sync minlines=100

" Comments and special comment words
syn keyword ps1CommentTodo TODO FIXME XXX HACK contained
syn match   ps1Comment /#.*/ contains=ps1CommentTodo

" Language keywords and elements
syn keyword ps1Conditional if else elseif switch
syn keyword ps1Repeat while default for do until break continue
syn match   ps1Repeat /\<foreach\>/ nextgroup=ps1Cmdlet
syn keyword ps1Keyword return filter in trap throw param begin process end
syn match   ps1Keyword /\<while\>/ nextgroup=ps1Cmdlet

" Functions and Cmdlets
syn match   ps1Cmdlet /\w\+-\w\+/
syn keyword ps1Keyword function nextgroup=ps1Function skipwhite
syn match   ps1Function /\w\+-*\w*/ contained

" Type declarations
syn match   ps1Type /\[[a-z0-9_:.]\+\(\[\]\)\?\]/
syn match   ps1StandaloneType /[a-z0-9_.]\+/ contained
syn keyword ps1Scope global local private script contained

" Variables and other user defined items
syn match   ps1Variable /\$\w\+/	
syn match   ps1Variable /\${\w\+:\\\w\+}/ 
syn match   ps1ScopedVariable /\$\w\+:\w\+/ contains=ps1Scope
syn match   ps1VariableName /\w\+/ contained

" Operators all start w/ dash
syn match   ps1OperatorStart /-c\?/ nextgroup=ps1Operator
syn keyword ps1Operator eq ne ge gt lt le like notlike match notmatch replace /contains/ notcontains contained
syn keyword ps1Operator ieq ine ige igt ile ilt ilike inotlike imatch inotmatch ireplace icontains inotcontains contained
syn keyword ps1Operator ceq cne cge cgt clt cle clike cnotlike cmatch cnotmatch creplace ccontains cnotcontains contained
syn keyword ps1Operator is isnot as
syn keyword ps1Operator and or band bor not
syn keyword ps1Operator f

" Regular Strings
syn region  ps1String start=/"/ skip=/`"/ end=/"/ 
syn region  ps1String start=/'/ end=/'/  

" Here-Strings
syn region  ps1String start=/@"$/ end=/^"@$/
syn region  ps1String start=/@'$/ end=/^'@$/

" Numbers
syn match   ps1Number /\<[0-9]\+/

" Setup default color highlighting
if version >= 508 || !exists("did_ps1_syn_inits")
  if version < 508
    let did_ps1_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink ps1String String
  HiLink ps1Conditional Conditional
  HiLink ps1Function Function
  HiLink ps1Variable Identifier
  HiLink ps1ScopedVariable Identifier
  HiLink ps1VariableName Identifier
  HiLink ps1Type Type
  HiLink ps1Scope Type
  HiLink ps1StandaloneType Type
  HiLink ps1Number Number
  HiLink ps1Comment Comment
  HiLink ps1CommentTodo Todo
  HiLink ps1Operator Operator
  HiLink ps1Repeat Repeat
  HiLink ps1RepeatAndCmdlet Repeat
  HiLink ps1Keyword Keyword
  HiLink ps1KeywordAndCmdlet Keyword
  HiLink ps1Cmdlet Statement
  delcommand HiLink
endif

let b:current_syntax = "powershell"
"------------------------------------------------------------------------
let &cpo=s:cpo_save
"=============================================================================
