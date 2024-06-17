<a name="readme-top"></a>

<div align="center">

[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]

# commitizen.nvim

This Neovim plugin allows you to emulate the [commitizen](https://github.com/commitizen-tools/commitizen) CLI tool for commit messages.

</div>

> [!WARNING]
>
> This plugin requires Neovim v0.9.0 or higher.

## TODO

- [ ] Create UI to create a commit message.
  - [ ] Select type of change (`feat:`, `fix:`, `docs:`, etc.).
  - [ ] Select scope of change (e.g. `feat(scope):`).
  - [ ] Ask if is a breaking change.
    - [ ] If yes, ask if you want to use the `!` character (e.g. `feat(scope)!:`).
    - [ ] If yes, add `BREAKING CHANGE` to the commit body.
  - [ ] Ask for a commit message (e.g. `feat(scope): commit message`).
  - [ ] Ask for a commit body (e.g. `feat(scope): commit message\n\nBody of the commit message.`).
- [ ] Create a `:Commitizen` command that will open a prompt to create a commit.

<div align="right">(<a href="#readme-top">back to top</a>)</div>

[stars-shield]: https://img.shields.io/github/stars/AlejandroSuero/commitizen.nvim.svg?style=for-the-badge
[stars-url]: https://github.com/AlejandroSuero/commitizen.nvim/stargazers
[issues-shield]: https://img.shields.io/github/issues/AlejandroSuero/commitizen.nvim.svg?style=for-the-badge
[issues-url]: https://github.com/AlejandroSuero/commitizen.nvim/issues
[license-shield]: https://img.shields.io/github/license/AlejandroSuero/commitizen.nvim.svg?style=for-the-badge
[license-url]: https://github.com/AlejandroSuero/commitizen.nvim/blob/main/LICENSE
