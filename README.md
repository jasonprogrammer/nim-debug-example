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
5. Debug -> Start Debugging.
6. Once your breakpoint is hit, open the Debug Console (at the bottom) and type:

```
python exec(open("bin/nim3.py").read())
```

and press [enter].

## References

[Debug Nim with GDB](https://internet-of-tomohiro.netlify.com/nim/gdb.en.html)
[Nim GDB video](https://www.youtube.com/watch?v=DmYOPkI_LzU)
[nim-gdb bash script](https://github.com/nim-lang/Nim/blob/devel/bin/nim-gdb)
[nim-gdb.py file, Nim repository](https://github.com/nim-lang/Nim/blob/devel/tools/nim-gdb.py)
[Nim Editor Support](https://github.com/nim-lang/Nim/wiki/Editor-Support)
[repr method for debugging](https://nim-lang.org/docs/system.html#repr%2CT)
[Nim VSCode plugin debug feature request](https://github.com/pragmagic/vscode-nim/issues/65)
[Extending GDB using Python](https://sourceware.org/gdb/onlinedocs/gdb/Python.html#Python)