# How to debug Nim code in VSCode

Below are some steps to help you debug [Nim](https://nim-lang.org/) code in [Visual Studio Code](https://code.visualstudio.com/).

## Prerequisites

1. Nim is installed.
2. GDB is installed.
3. VSCode is installed.
4. The [Nim VSCode extension](https://marketplace.visualstudio.com/items?itemName=kosz78.nim) is installed.
5. The [Native Debug VSCode extension](https://marketplace.visualstudio.com/items?itemName=webfreak.debug) is installed.
6. This example repository has been cloned with [Git](https://git-scm.com/).

## Steps to setup debugging

This repository contains some files to help setup debugging in VSCode.

1. Open VSCode.
2. File -> Open Folder -> Open the cloned repository folder in VSCode.
3. Open `main.nim`.
4. Set a breakpoint.
5. Build the code (ctrl-shift-b), which should use the build definition in `.vscode/tasks.json`.
5. Debug -> Start Debugging, which should use the launch config in `.vscode/launch.json`.
6. Once the breakpoint is hit, let's enable pretty-printing. Otherwise, when you mouse over a
symbol in the debugger, you'll see memory addresses instead of values.

Open the Debug Console (at the bottom) and type:

```
python exec(open("bin/nim3.py").read())
```

and press [enter], to run a Python script that sets up the symbols in GDB.

If this returns an error, try running the Python 2 version:

```
python execfile("bin/nim.py")
```

Note: The `nim.py` and `nim3.py` scripts were copied from [nim-gdb](https://github.com/cooldome/Nim-gdb),
and exist in the `bin/` directory simply to reduce the number of steps in setting this up.

If running the Python pretty-printing script succeeds, you should be able to mouse over a variable,
e.g. a string, and see the value:

![mousing over a variable in the debugger and seeing the value contained in the variable](images/debugger-mouseover-str.png)

## Notes

GDB can be extended with Python, and it seems that there are two scripts (written by others) for doing this:

1. The nim-gdb project: [nim-gdb](https://github.com/cooldome/Nim-gdb)  
2. From the Nim source:

[nim-gdb bash script](https://github.com/nim-lang/Nim/blob/devel/bin/nim-gdb)  
[nim-gdb.py file, Nim repository](https://github.com/nim-lang/Nim/blob/devel/tools/nim-gdb.py)  

## References

[Debug Nim with GDB](https://internet-of-tomohiro.netlify.com/nim/gdb.en.html)  
[Nim GDB video](https://www.youtube.com/watch?v=DmYOPkI_LzU)  
[Nim Editor Support](https://github.com/nim-lang/Nim/wiki/Editor-Support)  
[repr method for debugging](https://nim-lang.org/docs/system.html#repr%2CT)  
[Nim VSCode plugin debug feature request](https://github.com/pragmagic/vscode-nim/issues/65)  
[Extending GDB using Python](https://sourceware.org/gdb/onlinedocs/gdb/Python.html#Python)  