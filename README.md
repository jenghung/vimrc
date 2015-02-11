Go Go Vim!
=====
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
* 2dd → will delete 2 lines
* 3p → will paste the text 3 times
* NdG → delete to line N from current position.

### Word Move
* w → go to the start of the following word,
* e → go to the end of this word.
* W → go to the start of the following WORD,
* E → go to the end of this WORD.

### Efficient Move
* % : Go to the corresponding (, {, [.
* * (resp. #) : go to next (resp. previous) occurrence of the word under the cursor

### Select Word
* <action>a<object> and <action>i<object>
* vi" → will select foo.
* va" → will select "foo".
* vi) → will select "foo".
* va) → will select ("foo").

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

### Completion
* Completion: In Insert mode, just type the start of a word, then type Ctrl+p

### Splits: :split and vsplit
* Ctrl+w <dir> : where dir is any of hjkl or ←↓↑→ to change the split.
* Ctrl+w _ (resp. Ctrl+w |) : maximise the size of the split (resp. vertical split)
* Ctrl+w + (resp. Ctrl+w -) : Grow (resp. shrink) split

# plugin

## Install NeoBoundle
https://github.com/Shougo/neobundle.vim

## Vim Awesome
http://vimawesome.com/


