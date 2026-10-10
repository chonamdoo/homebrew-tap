cask "agentdeck" do
  version "0.1.11"
  sha256 "db5d9eda8691e0f20801d1c61f736c93801c93fdd288f69c3e9f7cb8fd3abe85"

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
