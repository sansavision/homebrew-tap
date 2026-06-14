# homebrew-tap

Homebrew tap for the **Hush** secrets CLI — login, fetch secrets, and run with injected env.

## Install (macOS)

```sh
brew install sansavision/tap/hush
```

This is a Homebrew **cask** (a prebuilt binary artifact), so it installs the
`hush` CLI directly onto your `PATH` **without** Homebrew's Xcode / Command Line
Tools formula preflight — no compiler toolchain required.

Then verify:

```sh
hush --version
```

## What this does

`brew install sansavision/tap/hush` downloads the same prebuilt macOS binary the
curl installer serves from `tap.tritonscaler.com`, verifies its `sha256`, and
installs it as `hush` on your `PATH`. Both Apple Silicon (`arm64`) and Intel
(`x86_64`) Macs are supported.

## Linux / non-Homebrew install

Homebrew casks are macOS-only. On Linux (or to skip Homebrew entirely), use the
installer:

```sh
curl -fsSL https://tap.tritonscaler.com/hush | sh
```
