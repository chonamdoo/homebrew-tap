cask "agentdeck" do
  version "0.1.7"
  sha256 "d24a1b07a93f0901847379e4f90204ef998f1863b5f091995c268630022f798b"

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
