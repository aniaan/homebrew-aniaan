cask "aniaan-obsidian" do
  version "1.8.10"
  sha256 "dc188f6d3d4c13be56a51fe64c397cfd323ecaaebe58c53e45a657ca4506f321"

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
