cask "infinity-terminal" do
  version "1.0.32"
  sha256 "4727cf15a57297283b2357d806318517bc7315307545ddf4039b206359aaa4a7"

  url "https://github.com/bujna94/infinityTerminal/releases/download/v#{version}/InfinityTerminal-#{version}.dmg",
      verified: "github.com/bujna94/infinityTerminal/"
  name "Infinity Terminal"
  desc "Terminal with an endlessly scrolling two-row grid of panes"
  homepage "https://infinityterminal.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "InfinityTerminal.app"

  zap trash: [
    "~/Library/Application Support/Infinity Terminal",
    "~/Library/Preferences/com.infinityterminal.app.plist",
    "~/Library/Saved Application State/com.infinityterminal.app.savedState",
  ]
end
