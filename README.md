# homebrew-tap

> **Homebrew distribution has been retired.** Homebrew casks still trip macOS
> Gatekeeper — the unsigned binary gets quarantined on download — so Homebrew
> added friction without benefit. The Hush CLI (`hush`) is now installed via the
> curl installer below on every platform; curl-installed binaries are **not**
> Gatekeeper-quarantined.

The **Hush** secrets CLI — login, fetch secrets, and run with injected env. The
command is `hush`.

## Install (macOS + Linux)

```sh
curl -fsSL https://tap.tritonscaler.com/hush | sh
```

Then verify:

```sh
hush --version
```

The installer detects your OS/arch, downloads the matching prebuilt `hush`
binary from `tap.tritonscaler.com`, verifies its `sha256`, and installs it onto
your `PATH`. Apple Silicon (`arm64`) + Intel (`x86_64`) macOS and `x86_64`
(glibc) Linux are supported.
