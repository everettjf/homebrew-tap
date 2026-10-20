
`microclaw` formula has moved to:

https://github.com/microclaw/homebrew-tap

## Install from new tap

```bash
brew untap everettjf/tap  # optional
brew tap microclaw/tap
brew install tap/microclaw
```

## XcodeSize

A native macOS app for inspecting Xcode storage and reviewing Quick, Standard, or Deep cleanup. Supports Apple Silicon and Intel on macOS 14 or later, with English, Simplified Chinese, Traditional Chinese, Japanese, and Korean interfaces.

```sh
brew install --cask everettjf/tap/xcodesize
```

[Download XcodeSize and read the release notes](https://github.com/everettjf/homebrew-tap/releases?q=xcodesize&expanded=true).

The app is Developer ID signed and notarized by Apple. Cleanup is always reviewed first: ordinary files move to Trash; simulator removal uses Apple's tools and needs additional confirmation. XcodeSize does not empty Trash or forcibly quit development tools.
