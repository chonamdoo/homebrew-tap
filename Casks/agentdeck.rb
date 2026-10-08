cask "agentdeck" do
  version "0.1.9"
  sha256 "a1a0581f59e8fbb0ee733bef2dce237613cc78dc1ae0e8f7116d8c610dfced92"

  url "https://github.com/chonamdoo/AgentDeck-releases/releases/download/v#{version}/AgentDeck-#{version}-apple-silicon.dmg"
  name "AgentDeck"
  desc "Native client for the Herdr agent multiplexer"
  homepage "https://github.com/chonamdoo/AgentDeck-releases"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "AgentDeck.app"

  zap trash: [
    "~/Library/Application Support/dev.agentdeck.mac",
    "~/Library/Preferences/dev.agentdeck.mac.plist",
  ]

  caveats <<~EOS
    AgentDeck needs the herdr CLI. Install it with
      brew install herdr
    or from AgentDeck on first launch.
  EOS
end
