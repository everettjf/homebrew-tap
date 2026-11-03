
`microclaw` formula has moved to:

https://github.com/microclaw/homebrew-tap

## Install from new tap

```bash
brew untap everettjf/tap  # optional
brew tap microclaw/tap
brew install tap/microclaw
```

## ipatool-rs

Experimental Rust App Store and FairPlay tools for Apple Silicon macOS, available
as a native dark desktop and a separate CLI. For practical use, prefer the
original [ipatool](https://github.com/majd/ipatool) and
[UnfairPlay](https://github.com/DrWhax/unfairplay) projects.

```sh
brew tap everettjf/tap
# Desktop app:
brew install --cask everettjf/tap/ipatool-rs-gui
# CLI:
brew install everettjf/tap/ipatool-rs
ipatool-rs --version
```

The desktop and CLI are Developer ID signed and notarized. Open **IPATOOL-RS**
from Applications. Desktop requires macOS 12 or later; protected FairPlay
preparation requires macOS 13 or later and explicit administrator approval.
Models stay private and authorization-specific. Remove collection access in the
app before uninstalling; the cask preserves account state, downloads and models.

See the [release notes](https://github.com/everettjf/ipatool-rs/releases/tag/v0.3.0)
for controlled macOS acceptance and remaining experimental gates.

## XcodeFit

A native macOS app for inspecting Xcode storage and reviewing Standard (default) or Deep cleanup. Supports Apple Silicon and Intel on macOS 14 or later, with English, Simplified Chinese, Traditional Chinese, Japanese, and Korean interfaces.

```sh
brew install --cask everettjf/tap/xcodefit
```

[Download XcodeFit and read the release notes](https://github.com/everettjf/homebrew-tap/releases?q=xcodefit&expanded=true).

The app is Developer ID signed and notarized by Apple. Cleanup is always reviewed first: ordinary files move to Trash; simulator removal uses Apple's tools and needs additional confirmation. XcodeFit does not empty Trash or forcibly quit development tools.

Previously XcodeSize. The tap maps the old `xcodesize` token to `xcodefit`. Run `brew reinstall --cask everettjf/tap/xcodefit` after updating this tap to replace an existing 1.0.0 installation. XcodeFit imports legacy settings and protected locations once.
