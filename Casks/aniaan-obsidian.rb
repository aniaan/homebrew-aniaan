cask "aniaan-obsidian" do
  version "1.8.4"
  sha256 "920d201f82d6efcb8a5319ef135086f01d41bc9cf23bcbe53fab5a2ef986c3fb"

  url "https://github.com/obsidianmd/obsidian-releases/releases/download/v#{version}/Obsidian-#{version}.dmg",
      verified: "github.com/obsidianmd/"
  name "aniaan-obsidian"
  desc "aniaan-obisidian"
  homepage "https://obsidian.md/"

  depends_on macos: ">= :ventura"

  app "Obsidian.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/md.obsidian.sfl*",
    "~/Library/Application Support/obsidian",
    "~/Library/Preferences/md.obsidian.plist",
    "~/Library/Saved Application State/md.obsidian.savedState",
  ]
end
