" Disables cursor blink
set guicursor+=a:blinkon0

" Remove GUI clutter
set go=

" Function to start maximised (uses wmctrl)
function Maximise_Window()
    silent !wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz
endfunction
