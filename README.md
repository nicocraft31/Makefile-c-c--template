# Makefile template

## Requiements

You must have GNU Make installed on your system.
On Debian based distibutions, use: 'sudo apt install make'

## Usage

To setup, use: 'make setup'
To build, use: 'make build'
To build & run, use: 'make build-run'

If you desire to change the extension of source files & header files,
change 'FILE_EXTENSION_SRC' & 'FILE_EXTENSION_H' respectively.

If you also want to change the compiler, change 'CC' to gcc, clang or other compiler of your electionIf you also want to change the compiler, change 'CC' to gcc, clang or any other compiler of your election.

To change the compiler flags, change 'CCFLAGS'.

Made for using on small projects written in C or C++, or though, it could be used for some other language.
