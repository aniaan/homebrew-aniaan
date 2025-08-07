cask "aniaan-cursor" do
  arch arm: "arm64", intel: "x64"

  version "1.4.2,07aa3b4519da4feab4761c58da3eeedd253a1671"
  sha256 arm:   "b92a10c24663f4d31d6183d45fc3440d1b882c722f790b556458a91a4787aa9e",
         intel: "49805f7edc0a588e29ff69c22e551dbe69e63688d8fce2f74f679683efe726a9"

  url "https://downloads.cursor.com/production/#{version.csv.second}/darwin/#{arch}/Cursor-darwin-#{arch}.zip"
  name "aniaan-cursor"
  desc "aniaan-cursor"
  homepage "https://www.cursor.com/"

  depends_on macos: ">= :ventura"

  app "Cursor.app"
  binary "#{appdir}/Cursor.app/Contents/Resources/app/bin/code", target: "cursor"

  zap trash: [
    "~/.cursor",
    "~/.cursor-tutor",
    "~/Library/Application Support/Caches/cursor-updater",
    "~/Library/Application Support/Cursor",
    "~/Library/Caches/com.todesktop.*",
    "~/Library/Caches/com.todesktop.*.ShipIt",
    "~/Library/HTTPStorages/com.todesktop.*",
    "~/Library/Logs/Cursor",
    "~/Library/Preferences/ByHost/com.todesktop.*.ShipIt.*.plist",
    "~/Library/Preferences/com.todesktop.*.plist",
    "~/Library/Saved Application State/com.todesktop.*.savedState",
    "~/Library/Saved Application State/todesktop.com.ToDesktop-Installer.savedState",
  ]
end
