local multiedit = require'common/multiedit'

if not CURSES then 
  ui.set_theme('base16-monokai-dark', {
    font = "Source Code Pro",
    fontsize = 12
  }) 
end

ui.maximized = true
  
-- mimics sublimes ctrl-d
keys.cd = multiedit.select_word
keys.af3 = multiedit.select_all_words

-- exchange all standard bindings with the multiedit version
keys['\n'] = multiedit.newline
keys.left = multiedit.char_left
keys.cleft = multiedit.word_left
keys.sleft = multiedit.char_left_extend
keys.csleft = multiedit.word_left_extend
keys.right = multiedit.char_right
keys.sright = multiedit.char_right_extend
keys.cright = multiedit.word_right
keys.csright = multiedit.word_right_extend
keys.home = multiedit.line_start
keys.shome = multiedit.line_start_extend
keys["end"] = multiedit.line_end
keys["send"] = multiedit.line_end_extend