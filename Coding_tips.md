[toc]

<!-- toc -->

# VScode

## * default space 

The number of default space is two, sometimes we want change it to four.

![VScode_tab](./images/How_to_code/VScode_tab.PNG) 

 "File" --> "Preferences" --> "Settings" -->search for "editor.detectIndentation" , uncheck.

##  * Chinese shows messy code 

 <img src="./images/How_to_code/messy code.PNG" alt="messy code" style="zoom:80%;" />

 "File" --> "Preferences" --> "Settings" -->search for "files.autoGuessEncoding" , check.

## * Font setting

"File" --> "Preferences" --> "Settings" -->search for "edit.font family" , put in "Noto Sans Mono CJK SC,monospace".

## * show the C++ putout to terminal

(1) installing extentions

 <img src="./images/How_to_code/install_extentions.png" alt="install_extentions" />

(2) new a file named "main.c"

(3)typing the F5 choose "C++(GDB/LLDB)", it'll generate a file named "launch.json", rewrite the file with following code:

```json
{
    // Use IntelliSense to learn about possible attributes.
    // Hover to view descriptions of existing attributes.
    // For more information, visit: https://go.microsoft.com/fwlink/?linkid=830387
    "version": "0.2.0",
    "configurations": [
        {
            "name": "(gdb) Launch",
            "type": "cppdbg",
            "request": "launch",
            "program": "${workspaceFolder}/${fileBasenameNoExtension}.out",
            "args": [],
            "stopAtEntry": false,
            "cwd": "${workspaceFolder}",
            "environment": [],
            "externalConsole": false,
            "MIMode": "gdb",
            "preLaunchTask": "build",
            "setupCommands": [
                {
                    "description": "Enable pretty-printing for gdb",
                    "text": "-enable-pretty-printing",
                    "ignoreFailures": true
                }
            ]
        }
    ]
}
```

(4)in the same folder named ".vscode", new a file named "tasks.json" and type following code in it :

```json
{
    // See https://go.microsoft.com/fwlink/?LinkId=733558
    // for the documentation about the tasks.json format
    "version": "2.0.0",
    "tasks": [
        {
            "label": "build",
            "type": "shell",
            "command": "g++",
            "args": ["-g", "${file}", "-std=c++11", "-o", "${fileBasenameNoExtension}.out"]
        }
     ]
}
```

now, the relative files catalog is like this:

 <img src="./images/How_to_code/files_catalog.png" alt="files_catalog" />

 <img src="./images/How_to_code/files_catalog_vscode.png" alt="files_catalog_vscode" />

## *watch every element of an array when debugging

 add an array to "watch", and add a prefix "*(type(*)[number])" to the array name:

 <img src="./images/How_to_code/watch_array.png" alt="watch_array" />

# C++

## rand()

```c++
#include<stdlib.h>
#include<time.h>
time_t time(time_t *t);  
srand((unsigned)time(NULL)); //use time as a seed
char pattern[20];
for (int i = 0; i < sizeof(pattern); i++)
pattern[i] = (97 + rand() % 4); //assign each element of the array as a or b or c or d
```

## sleep()

Linux:

```c++
#include<unistd.h>
sleep(1); //delay for one seconds
```

windows:

```c++
#include<iostream>
using namespace std;
_sleep(1000);//delay for one seconds
```

