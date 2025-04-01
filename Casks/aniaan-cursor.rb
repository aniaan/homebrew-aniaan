cask "aniaan-cursor" do
  arch arm: "arm64", intel: "x64"

  version "0.48.6,1649e229afdef8fd1d18ea173f063563f1e722ef"
  sha256 arm:   "2532dc3c84f0d8b4d576c80525c5f95fe3e64c856a21afbab775809c49cb6690",
         intel: "61fb4423e2464261cb84c6cdd02a5b55b61b38c13dd4f67ed6c57105d438e50a"

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
