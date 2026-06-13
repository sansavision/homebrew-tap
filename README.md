# homebrew-tap

Homebrew tap for the **Hush** secrets CLI — login, fetch secrets, and run with injected env.

## Install

```sh
brew tap sansavision/tap
brew install hush
```

Or in one step:

```sh
brew install sansavision/tap/hush
```

Then verify:

```sh
hush --version
```

## What this does

`brew install hush` downloads the same prebuilt macOS binary the curl installer
serves from `tap.tritonscaler.com`, verifies its `sha256`, and installs it as
`hush` on your `PATH`. Both Apple Silicon (`arm64`) and Intel (`x86_64`) Macs are
supported.

> The non-Homebrew installer remains:
> `curl -fsSL https://tap.tritonscaler.com/hush | sh`
