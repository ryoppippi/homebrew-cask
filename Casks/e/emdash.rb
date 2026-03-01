cask "emdash" do
  arch arm: "arm64", intel: "x64"

  version "0.4.21"
  sha256 arm:   "39651327635e89aa5bfdbfc28a46b92907d1969b3f275f1b7412ecf24dbfde53",
         intel: "d70058dcf5aa3c5a2b3563bc139e6d39e7dae1ce914514ae61b5fe5a03e638e9"

  url "https://github.com/generalaction/emdash/releases/download/v#{version}/emdash-#{arch}.dmg",
      verified: "github.com/generalaction/emdash/"
  name "Emdash"
  desc "UI for running multiple coding agents in parallel"
  homepage "https://www.emdash.sh/"

  depends_on macos: ">= :big_sur"

  app "emdash.app"

  zap trash: [
    "/Library/Logs/emdash",
    "/Library/Saved Application State/com.emdash.savedState",
    "~/Library/Application Support/emdash",
    "~/Library/Preferences/com.emdash.plist",
  ]
end
