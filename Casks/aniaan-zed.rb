cask "aniaan-zed" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.194.3"
  sha256 arm:   "f274d0baf2a6c84758756d13fae6121e2e24223193e1638717e6033c8df422b1",
         intel: "c48bb2f1fe322b80b73728e51ae54161b68dc1a7d4a4c02279e698e90eb39c2a"

  url "https://github.com/zed-industries/zed/releases/download/v#{version}/Zed-#{arch}.dmg"
  name "Zed"
  desc "aniaan-zed"
  homepage "https://zed.dev/"

  depends_on macos: ">= :catalina"

  app "Zed.app"
  binary "#{appdir}/Zed.app/Contents/MacOS/cli", target: "zed"

  zap trash: [
    "~/.config/zed",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/dev.zed.zed.sfl*",
    "~/Library/Application Support/Zed",
    "~/Library/Caches/dev.zed.Zed",
    "~/Library/Caches/Zed",
    "~/Library/HTTPStorages/dev.zed.Zed",
    "~/Library/Logs/Zed",
    "~/Library/Preferences/dev.zed.Zed.plist",
    "~/Library/Saved Application State/dev.zed.Zed.savedState",
  ]
end
