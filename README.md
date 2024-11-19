# Binutils++

Binutils++ is a set of utilities to manipulate binary files, written in C++. Binutils++ is inspired from GNU Binutils,
while not being a direct port of it but a different project, inspired by it.

## Subprojects

Binutils++ being a set of tools, it contains a lot of subprojects:

- `addr2line++`: Convert addresses into file names and line numbers
- `ar++`: Create, modify, and extract from archives
- `as++`: Assembler
- `as++repl`: Assembler REPL (Read Eval Print Loop) for fast assembly testing
- `c++filt++`: Filter to demangle encoded C++ symbols
- `dlltool++`: Creates files for building and using DLLs
- `elfedit++`: Allows alteration of ELF format files
- `gdb++`: Debugger
- `gprof++`: Displays profiling information
- `ld++`: Linker
- `libas++`: Shared library for the assembler's utilities
- `libld++`: Shared library for the linker's utilities
- `nm++`: Lists symbols from object files
- `objcopy++`: Copies and translates object files
- `objdump++`: Displays information from object files
- `ranlib++`: Generates an index to the contents of an archive
- `readelf++`: Displays information from any ELF format object file
- `size++`: Lists the section sizes of an object or archive file
- `strings++`: Lists printable strings from files
- `strip++`: Discards symbols
- `windmc++`: A Windows compatible message compiler
- `windres++`: A compiler for Windows resource files

## Build

To build Binutils++, you can run `make` in the root directory to build all tools, or in the directories of the tool you
want to build.

## License

Binutils++ is licensed under the [GNU General Public License v2.0 only](https://www.gnu.org/licenses/gpl-2.0). 
See the [`LICENSE`](./LICENSE) file for details.
