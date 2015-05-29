## Basic Use
http://yannesposito.com/Scratch/en/blog/Learn-Vim-Progressively/

### Insert 
* a → insert after the cursor
* o → insert a new line after the current one
* O → insert a new line before the current one

### Basic Move
* 0 → go to the first column
* ^ → go to the first non-blank character of the line
* $ → go to the end of line
* NG → Go to line N
* gg → shortcut for 1G - go to the start of the file
* G → Go to last line
* Ctrl+f → next page 
* Ctrl+b → previous page

### Undo, Redo
* u → undo
* Ctrl+r → redo

### Delete(d), Copy(y), Paste(p)
* D → delete text after current cursor
* 2dd → will delete 2 lines
* 3p → will paste the text 3 times
* NdG → delete to line N from current position.

### Word Move
* w → go to the start of the following word,
* e → go to the end of this word.
* W → go to the start of the following WORD,
* E → go to the end of this WORD.
* b, B → move backward.

### Efficient Move
* % : Go to the corresponding (, {, [.
* * (resp. #) : go to next (resp. previous) occurrence of the word under the cursor
* f" → find next "
* fx → find next x
* F" → backward

### Select Word Ex: ("foo")
* viw → will select foo
* vi" → will select foo
* va" → will select "foo"
* vi) → will select "foo"
* va) → will select ("foo")

### Screen Move
zt → move current line to top.
zb → move current line to bottom.
zz → move current line to center.

### Insert each line
* Ctrl+v → Start block selection
* move down (could also be jjj or %, etc…)
* I, write text, [ESC]

### Apend each line
* Ctrl+v → Start block selection
* move down (could also be jjj or %, etc…)
* $ go to the end of the line
* A, write text, ESC.

### Indent
* Ctrl+v → Start block selection
* move down (could also be jjj or %, etc…)
* < (resp. >) → indent to the left (resp. to the right).
* = → auto indent
* gg=G → auto indent all text

### Completion
* Completion: In Insert mode, just type the start of a word, then type Ctrl+p

### Splits :new and :vnew
* Ctrl+w <dir> → where dir is any of hjkl or ←↓↑→ to change the split.
* Ctrl+w _ (resp. Ctrl+w |) → maximise the size of the split (resp. vertical split)
* ctrl+w = → equally split windows
* Ctrl+w + (resp. Ctrl+w -) → Grow (resp. shrink) split

### TabEdit
* :tabedit → new tab. 

### Windows
* :ls → view buffer
* :b3 → open number 3 buffer
* :bd → close current buffer
* :bd3 → close number 3 buffer
* :tab ba → open all buffer to tab


## Plugins
* Install by NeoBoundle: https://github.com/Shougo/neobundle.vim
* Vim Awesome: http://vimawesome.com/

### [ctrlp](https://github.com/kien/ctrlp.vim)
* Press Ctrl+f and Ctrl+b to cycle between modes.
* Use Ctrl+t or Ctrl+v, Ctrl+x to open the selected entry in a new tab or in a new split.
* Ctrl+o select open type. 

### [Ack](https://github.com/mileszs/ack.vim)
* :Ack [options] {pattern} [{directories}]
* o → to open (same as enter)
* O → to open and close quickfix window
* t → to open in new tab
* h → to open in horizontal split
* v → to open in vertical split
* q → to close the quickfix window
* :Ack searchtext % → find all in current document


