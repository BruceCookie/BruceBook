[toc]

<!-- toc -->

# shortcut

| Terminal / multi-Terminal | Ctrl+Alt+T   | Ctrl+Shift+T        |
| ------------------------- | ------------ | ------------------- |
| switchover Terminal       | Alt+Number   |                     |
| Copy text in Terminal     | Ctrl+Shift+C |                     |
| Paste text in Terminal    | Ctrl+Shift+V | Mouse middle button |

# command

## aboat user

| switch to root / user | su root                       | su Bruce |
| --------------------- | ----------------------------- | -------- |
| set password          | sudo passwd root              |          |
| authority             | sudo chmod -R 777 [file name] |          |
| super authority       | sudo -i                       |          |

## about file

| new folder          | mkdir [folder name]                         |                 |
| ------------------- | ------------------------------------------- | --------------- |
| enter folder        | cd [folder name]                            |                 |
| Create file         | gedit [file name]                           |                 |
| copy                | cp [file name] [directory or new file name] |                 |
| erase               | rm [file name]                              | rm -Rf [folder] |
| search file         | find -name [file name]                      |                 |
| check file contents | grep -r [target contents]                   |                 |
| list files          | ls                                          |                 |
| files tree          | tree                                        |                 |

## about package

| *.tar.xz extract                                        | tar xvJf [filename.tar.xz]                  |                                                              |
| ------------------------------------------------------- | ------------------------------------------- | ------------------------------------------------------------ |
| *.tar extract                                           | tar -xvf [filename.tar]                     |                                                              |
| xxxxxxxxxx github:  ![toc](images/markdown/toc.png)bash | tar -cvf [filename.tar] [target folder]     |                                                              |
| *.gz extract                                            | gunzip [filename.gz]                        | gzip -d [filename.gz]                                        |
| *.gz compressing                                        | gzip [target folder]                        |                                                              |
| *.tar.gz / *.tgz  extract                               | tar -zxvf [filename.tar.gz]                 | tar -C [directory] -zxvf [filename.tar.gz]                   |
| *.tar.gz / *.tgz  compressing                           | tar -zcvf [filename.tar.gz] [target folder] |                                                              |
| *.zip  extract                                          | unzip [filename.zip]                        |                                                              |
| *.zip  compressing                                      | zip  [filename.zip] [target folder]         | compressing sub-folder zip -r [filename.zip] [target folder] |
| *.rar extract                                           | rar x [filename.rar]                        |                                                              |
| *.rar compressing                                       | rar a [filename.rar] [target folder]        |                                                              |
|                                                         |                                             |                                                              |

# vim

##insertmode

| after character  | a    |      |
| ---------------- | ---- | ---- |
| end of line      | A    |      |
| before character | i    |      |
| head of line     | I    |      |
| new top line     | o    |      |
| new next line    | O    |      |

## Command

| exit edit mode                                               | [Esc]                             |
| ------------------------------------------------------------ | --------------------------------- |
| show multiple files                                          | ctrl+w+direction key              |
| switch windows                                               | :vsplit                           |
| find contents                                                | /[contents]                       |
| jump to target line                                          | :[line number]                    |
| jump to the head of last line                                | :$                                |
| jump to the last line                                        | G                                 |
| jump to the first line                                       | gg                                |
| show line number                                             | :set nu                           |
| Cancel line number                                           | : set nonu                        |
| enable mouse control                                         | :set mouse=0                      |
| searching highlight                                          | :set hls                          |
| set font                                                     | : set guifont=monaco\10           |
| mark current line                                            | :set sursorline                   |
| save and exit                                                | :wq                               |
| unsaved and exit                                             | :q                                |
| force to exit                                                | :q!                               |
| copy                                                         | y                                 |
| copy a character                                             | yl                                |
| copy a word                                                  | yw                                |
| copy a line                                                  | yy                                |
| delete                                                       | d                                 |
| delete the text after cursor                                 | dj                                |
| paste                                                        | p                                 |
| undoing                                                      | u                                 |
| recover                                                      | ctrl+r                            |
| replace the source character appeared first time in everyline | :%s/[source char]/[new char]      |
| replace all source characters                                | :%s/[source char]/[new char]/g    |
| replace 8th to 10th line characters                          | :8,10s/[source char]/[new char]/g |
| selecting mode                                               | ctrl+v                            |

