cask "bettercapture" do
  version "2026.2.1"
  sha256 "2d7f843e4eedea42720f68febb6f1c0eec925f7f10cc95db97b8414ba3879cc1"

  url "https://github.com/jsattler/BetterCapture/releases/download/v#{version}/BetterCapture-#{version}-arm64.dmg"
  name "BetterCapture"
  desc "Free and open source screen recorder"
  homepage "https://github.com/jsattler/BetterCapture"
  url "https://github.com/jsattler/BetterCapture/releases/download/v#{version}/BetterCapture-#{version}-arm64.dmg",
      verified: "github.com/jsattler/BetterCapture/"
  name "BetterCapture"
  desc "Free and open source screen recorder for the rest of us"
  homepage "https://bettercapture.app/"
  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"
  depends_on arch: :arm64

  app "BetterCapture.app"

  zap trash: [
    "~/Library/Application Support/BetterCapture",
    "~/Library/Caches/com.sattlerjoshua.BetterCapture",
    "~/Library/Preferences/com.sattlerjoshua.BetterCapture.plist",
  ]
end
