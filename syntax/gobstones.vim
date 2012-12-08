" Vim syntax file
" Language: Gobstones
" Maintainer: Nahuel Garbezza
" Filenames: *.gbs

if exists("b:current_syntax")
  finish
endif

" keywords
syn keyword basicLangKeyword procedure function return if while repeatWith in
" data types
syn keyword boolean   True False
syn keyword color     Azul Negro Rojo Verde
syn keyword direction Norte Este Sur Oeste
" primitive commands/expressions
syn keyword primitiveCommand    Poner Sacar Mover
syn keyword primitiveExpression nroBolitas hayBolitas puedeMover
" comments
syn match singleLineComment "--.*$"
syn match singleLineComment "\/\/.*$"
syn region multilineComment start="{-" end="-}"
syn region multilineComment start="/\*" end="\*/"

" Highlighting

hi def link basicLangKeyword        Statement

hi def link boolean   Type
hi def link color     Type
hi def link direction Type

hi def link primitiveCommand    Special
hi def link primitiveExpression Special

hi def link singleLineComment Comment
hi def link multilineComment  Comment

let b:current_syntax = "gobstones"
