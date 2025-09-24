# Development Guidelines for Dotfiles Repository

## Build/Lint/Test Commands
- **Format Lua code**: `stylua .` (2-space indent, 120 column width)
- **Check Neovim health**: `nvim +checkhealth`
- **No build system** - this is a configuration repository
- **No tests** - configuration files don't require testing

## Code Style Guidelines
- **Lua files**: 2-space indentation, 120 column width (stylua.toml)
- **General**: UTF-8 encoding, LF line endings, trim trailing whitespace
- **Naming**: Standard Lua conventions (snake_case for variables/functions)
- **Imports**: Use `require()` for Lua modules
- **Error handling**: Standard Lua error patterns with pcall where appropriate
- **Comments**: Minimal comments, focus on clarity over documentation
- **Tabs vs Spaces**: 4-space tabs for Neovim config, 2-space for other configs

## Editor/IDE Configuration
- **LazyVim**: Primary Neovim distribution with TypeScript, Ruby, YAML, JSON support
- **ESLint**: For JavaScript/TypeScript linting
- **Prettier**: For code formatting
- **Copilot**: AI assistance enabled

## File Organization
- **Stow-based**: Use `stow */` to deploy configurations
- **Git ignore**: Standard patterns for dotfiles and Neovim cache
- **No Cursor/Copilot rules**: Follow standard conventions