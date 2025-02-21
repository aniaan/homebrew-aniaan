cask "aniaan-vscode" do
  arch arm: "darwin-arm64", intel: "darwin"

  version "1.97.2"
  sha256 arm:   "567ba4fae5545586a0bff02eea263d59873fcf488368a9a9ccf3d4c22dfa8ebc",
         intel: "cfe48cf7bce34830cb7a20ee7b5e8fbe575fe95a47ef49f62dce8ccf3087dd89"

  url "https://update.code.visualstudio.com/#{version}/#{arch}/stable"
  name "aniaan vscode"
  desc "aniaan vscode"

  depends_on macos: ">= :ventura"

  app "Visual Studio Code.app"
  binary "#{appdir}/Visual Studio Code.app/Contents/Resources/app/bin/code"

  uninstall launchctl: "com.microsoft.VSCode.ShipIt",
            quit:      "com.microsoft.VSCode"

  zap trash: [
    "~/.vscode",
    "~/Library/Application Support/Code",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.microsoft.vscode.sfl*",
    "~/Library/Caches/com.microsoft.VSCode",
    "~/Library/Caches/com.microsoft.VSCode.ShipIt",
    "~/Library/HTTPStorages/com.microsoft.VSCode",
    "~/Library/Preferences/ByHost/com.microsoft.VSCode.ShipIt.*.plist",
    "~/Library/Preferences/com.microsoft.VSCode.helper.plist",
    "~/Library/Preferences/com.microsoft.VSCode.plist",
    "~/Library/Saved Application State/com.microsoft.VSCode.savedState",
  ]
end
