# Neovim Cheatsheet

Leader key: `,` (comma)

## LSP Features

### Diagnostics (Errors/Warnings)
- `,df` - Show diagnostic in floating window (current line)
- `,dl` - List all diagnostics (location list)
- `,dn` - Go to next diagnostic
- `,dp` - Go to previous diagnostic

### Navigation
- `,gd` - Go to definition
- `,gD` - Go to declaration
- `,gh` - Show hover documentation
- `,gi` - Go to implementation
- `,gs` - Show signature help

### Refactoring
- `<space>rn` - Rename symbol (renames across all files in project)

## Formatting

### Clojure
- **Format on save** - Clojure files are automatically formatted when saved
- Plugin: `conform.nvim` with `cljfmt` formatter

- **REPL** - Evaluate forms without leaving the editor
- Plugin: fireplace. Connects to a running nREPL; expects .nrepl-port
- `cqq` Send the current expression to a buffer from which it can be run
- `cqc` Open a buffer to run arbitrary expressions
