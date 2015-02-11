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
* <C+F> → next page 
* <C+B> → previous page

### Undo, Redo
* u → undo
* <C-r> → redo

### Delete(d), Copy(y), Paste(p)
* 2dd → will delete 2 lines
* 3p → will paste the text 3 times
* NdG -> delete to line N from current position.

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
* <C-v> → Start block selection
* <C-d> → move down (could also be jjj or %, etc…)
* I, write text, [ESC]

### Apend each line
* <C-v> → Start block selection
* <C-d> → move down (could also be jjj or %, etc…)
* $ go to the end of the line
* A, write text, ESC.

### Completion
* Completion: In Insert mode, just type the start of a word, then type <C-p>




# plugin

## Install NeoBoundle
https://github.com/Shougo/neobundle.vim

## Vim Awesome
http://vimawesome.com/

