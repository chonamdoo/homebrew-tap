cask "agentdeck" do
  version "0.1.22"
  sha256 "ac93e4aec41547a75797c948e0f8f2f19c1382cd99228a343417bf666169b834"

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
