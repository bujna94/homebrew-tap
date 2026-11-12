cask "infinity-terminal" do
  version "1.0.33"
  sha256 "254d00e77b4e6c8d36c89c6383f5d18f3b817b9ae6299722809e771ffc7edd0d"

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
  depends_on macos: :sonoma

  app "InfinityTerminal.app"

  zap trash: [
    "~/Library/Application Support/Infinity Terminal",
    "~/Library/Preferences/com.infinityterminal.app.plist",
    "~/Library/Saved Application State/com.infinityterminal.app.savedState",
  ]
end
