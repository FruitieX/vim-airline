" Normal mode
"          [ guifg, guibg, ctermfg, ctermbg, opts ]
let s:N1 = [ '#141413' , '#CAE682' , 15, 8 ] " mode
let s:N2 = [ '#CAE682' , '#32322F' , 15 , 19 ] " info
let s:N3 = [ '#CAE682' , '#242424' , 15 , 19 ] " statusline
let s:N4 = [ '#86CD74' , 9 ]                   " mode modified

" Insert mode
let s:I1 = [ '#141413' , '#CAE682' , 18, 15 ] " mode
let s:I2 = [ '#FDE76E' , '#32322F' , 15 , 19 ]
let s:I3 = [ '#FDE76E' , '#242424' , 15 , 19 ]
let s:I4 = [ '#FADE3E' , 9 ]

" Visual mode
let s:V1 = [ '#141413' , '#CAE682' , 18, 7 ] " mode
let s:V2 = [ '#FDE76E' , '#32322F' , 15 , 19 ]
let s:V3 = [ '#FDE76E' , '#242424' , 15 , 19 ]
let s:V4 = [ '#FADE3E' , 9 ]

" Replace mode
let s:R1 = [ '#141413' , '#CAE682' , 18, 3 ] " mode
let s:R2 = [ '#FDE76E' , '#32322F' , 15 , 19 ]
let s:R3 = [ '#FDE76E' , '#242424' , 15 , 19 ]
let s:R4 = [ '#FADE3E' , 9 ]

" Paste mode
let s:PA = [ '#94E42C' , 3 ]

" Info modified
let s:IM = [ '#40403C' , 9 ]

" Inactive mode
let s:IA = [ '#767676' , s:N3[1] , 20 , s:N3[3] , '' ]

let g:airline#themes#fruit#palette = {}

let g:airline#themes#fruit#palette.accents = {
      \ 'red': [ '#E5786D' , '' , 9 , '' , '' ],
      \ }

let g:airline#themes#fruit#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#fruit#palette.normal_modified = {
    \ 'airline_a': [ s:N1[0] , s:N4[0] , s:N1[2] , s:N4[1] , ''     ] ,
    \ 'airline_b': [ s:N4[0] , s:IM[0] , s:N4[1] , s:IM[1] , ''     ] ,
    \ 'airline_c': [ s:N4[0] , s:N3[1] , s:N4[1] , s:N3[3] , ''     ] }


let g:airline#themes#fruit#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#fruit#palette.insert_modified = {
    \ 'airline_a': [ s:I1[0] , s:I4[0] , s:I1[2] , s:I4[1] , ''     ] ,
    \ 'airline_b': [ s:I4[0] , s:IM[0] , s:I4[1] , s:IM[1] , ''     ] ,
    \ 'airline_c': [ s:I4[0] , s:N3[1] , s:I4[1] , s:N3[3] , ''     ] }


let g:airline#themes#fruit#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#fruit#palette.visual_modified = {
    \ 'airline_a': [ s:V1[0] , s:V4[0] , s:V1[2] , s:V4[1] , ''     ] ,
    \ 'airline_b': [ s:V4[0] , s:IM[0] , s:V4[1] , s:IM[1] , ''     ] ,
    \ 'airline_c': [ s:V4[0] , s:N3[1] , s:V4[1] , s:N3[3] , ''     ] }


let g:airline#themes#fruit#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#fruit#palette.replace_modified = {
    \ 'airline_a': [ s:R1[0] , s:R4[0] , s:R1[2] , s:R4[1] , ''     ] ,
    \ 'airline_b': [ s:R4[0] , s:IM[0] , s:R4[1] , s:IM[1] , ''     ] ,
    \ 'airline_c': [ s:R4[0] , s:N3[1] , s:R4[1] , s:N3[3] , ''     ] }


let g:airline#themes#fruit#palette.insert_paste = {
    \ 'airline_a': [ s:I1[0] , s:PA[0] , s:I1[2] , s:PA[1] , ''     ] ,
    \ 'airline_b': [ s:PA[0] , s:IM[0] , s:PA[1] , s:IM[1] , ''     ] ,
    \ 'airline_c': [ s:PA[0] , s:N3[1] , s:PA[1] , s:N3[3] , ''     ] }


let g:airline#themes#fruit#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
let g:airline#themes#fruit#palette.inactive_modified = {
    \ 'airline_c': [ s:N4[0] , ''      , s:N4[1] , ''      , ''     ] }


if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#fruit#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#DADADA' , '#242424' , 253 , 234 , ''     ] ,
      \ [ '#DADADA' , '#40403C' , 253 , 238 , ''     ] ,
      \ [ '#141413' , '#DADADA' , 232 , 253 , 'bold' ] )

