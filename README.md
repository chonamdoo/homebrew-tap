# chonamdoo/homebrew-tap

Homebrew casks for [AgentDeck](https://github.com/chonamdoo/AgentDeck-releases), the native macOS client for Herdr (Apple Silicon, macOS 14+).

```sh
brew install --cask chonamdoo/tap/agentdeck
brew upgrade --cask agentdeck
```

If AgentDeck was installed from the DMG before, quit it and replace it once with
`brew install --cask --force chonamdoo/tap/agentdeck`; Homebrew manages it from then on.

`Casks/agentdeck.rb` is updated by AgentDeck's `macos/Herd/scripts/publish-release.sh --publish`; do not edit the version or checksum by hand.
