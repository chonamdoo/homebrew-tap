cask "agentdeck" do
  version "0.1.16"
  sha256 "828c20c8034ec08b6a1c92eaed2de57351fff23e3354a7da0e4b5935677f7ed8"

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
