cask "aniaan-zen-browser" do
  version "1.7.5b"
  sha256 "1c1e4ba2808c787827e35ea7410b2a7e9d50ad46068bc7bbd6a4ad8389a5bee8"

  url "https://github.com/zen-browser/desktop/releases/download/#{version}/zen.macos-universal.dmg",
      verified: "github.com/zen-browser/desktop/"
  name "aniaan-zen-browser"
  desc "aniaan-zen-browser"
  homepage "https://zen-browser.app/"

  auto_updates true
  depends_on macos: ">= :ventura"


  app "Zen Browser.app"

  zap trash: [
        "~/Library/Application Support/zen",
        "~/Library/Caches/Mozilla/updates/Applications/Zen Browser",
        "~/Library/Caches/zen",
        "~/Library/Preferences/org.mozilla.com.zen.browser.plist",
        "~/Library/Saved Application State/org.mozilla.com.zen.browser.savedState",
      ],
      rmdir: "~/Library/Caches/Mozilla"
end
