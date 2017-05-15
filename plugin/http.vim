if !exists('g:vim_http_clean_before_do')
  let g:vim_http_clean_before_do = 1
endif
if !exists('g:vim_http_additional_curl_args')
  let g:vim_http_additional_curl_args = ''
endif
command! -bang Http call http#do_buffer('<bang>' == '!')
command! HttpShowCurl call http#show_curl()
command! HttpShowRequest call http#show_request()
command! HttpClean call http#clean()
command! HttpAuth call http#auth()
