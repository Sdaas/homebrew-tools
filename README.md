# homebrew-tools

Homebrew tap for [@Sdaas](https://github.com/Sdaas)'s command-line tools.

```sh
brew tap sdaas/tools
```

## Available formulas

| Formula        | What it installs                                                        |
| -------------- | ----------------------------------------------------------------------- |
| `ask`          | Natural-language CLI that turns queries into shell commands via a local LLM |
| `decrypt-pdf`  | Decrypt password-protected PDFs using qpdf, mutool, or ghostscript       |
| `sdaas-tools`  | Meta-package that installs **all** of the tools above in one command     |

## Install

Install a single tool:

```sh
brew install ask
brew install decrypt-pdf
```

Or install everything at once with the bundle:

```sh
brew install sdaas-tools
```

## Upgrading — the important distinction

There are two different "upgrades," and they do different things:

- **`brew upgrade`** (no arguments) upgrades every installed formula to its latest
  version — including `ask` and `decrypt-pdf`. **This is how you get new *tool*
  versions.** New releases of the tools reach you through a plain `brew upgrade`;
  you do **not** need to touch `sdaas-tools` to get them.

  ```sh
  brew update && brew upgrade      # gets the latest ask, decrypt-pdf, etc.
  ```

- **`brew upgrade sdaas-tools`** upgrades only the **meta-package itself**. The
  meta-package is just a list of which tools belong in the bundle, so it only
  changes when a tool is **added to or removed from** the bundle — not when `ask`
  or `decrypt-pdf` themselves release. Running it will **not** pull newer versions
  of the individual tools (use plain `brew upgrade` for that).

In short: **`brew upgrade` for new tool versions; `brew upgrade sdaas-tools` only
when the set of bundled tools changes.**

## Notes

- Formulas here are generated and published automatically by each source repo's
  release workflow — this tap is the single source of truth for the formulas.
- License: MIT.
