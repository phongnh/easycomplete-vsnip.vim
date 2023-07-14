if exists('g:loaded_easycomplete_vsnip')
    finish
endif

let g:loaded_easycomplete_vsnip = v:true

augroup EasyCompleteVsnip
    autocmd!
    autocmd User easycomplete_custom_plugin call easycomplete#RegisterSource({
                \ 'name': 'vsnip',
                \ 'whitelist': ['*'],
                \ 'completor': function('easycomplete#sources#vsnip#completor'),
                \ })
augroup END
