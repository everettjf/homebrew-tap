
`microclaw` formula has moved to:

https://github.com/microclaw/homebrew-tap

## Install from new tap

```bash
brew untap everettjf/tap  # optional
brew tap microclaw/tap
brew install tap/microclaw
```

## XcodeFit

A native macOS app for inspecting Xcode storage and reviewing Standard (default) or Deep cleanup. Supports Apple Silicon and Intel on macOS 14 or later, with English, Simplified Chinese, Traditional Chinese, Japanese, and Korean interfaces.

```sh
brew install --cask everettjf/tap/xcodefit
```

[Download XcodeFit and read the release notes](https://github.com/everettjf/homebrew-tap/releases?q=xcodefit&expanded=true).

The app is Developer ID signed and notarized by Apple. Cleanup is always reviewed first: ordinary files move to Trash; simulator removal uses Apple's tools and needs additional confirmation. XcodeFit does not empty Trash or forcibly quit development tools.

Previously XcodeSize. The tap maps the old `xcodesize` token to `xcodefit`. Run `brew reinstall --cask everettjf/tap/xcodefit` after updating this tap to replace an existing 1.0.0 installation. XcodeFit imports legacy settings and protected locations once.
