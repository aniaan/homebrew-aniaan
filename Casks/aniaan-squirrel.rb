cask "aniaan-squirrel" do
  version "1.1.1"
  sha256 "8eb0744dd30e39903f1379641d3f7a36783a5468b07b545289e81aa76d7d5ceb"

  url "https://github.com/rime/squirrel/releases/download/#{version}/Squirrel-#{version}.pkg", verified: "github.com/rime/squirrel"
  name "aniaan-squirrel"
  desc "aniaan-squirrel"

  depends_on macos: ">= :ventura"

  pkg "Squirrel-#{version}.pkg"

  uninstall pkgutil: [
              "com.googlecode.rimeime.Squirrel.pkg", # Package name of older versions (< 0.10.0)
              "im.rime.inputmethod.Squirrel",
            ],
            delete:  "/Library/Input Methods/Squirrel.app"

  zap trash: [
    "~/Library/Caches/com.googlecode.rimeime.inputmethod.Squirrel",
    "~/Library/Caches/im.rime.inputmethod.Squirrel",
    "~/Library/Preferences/com.googlecode.rimeime.inputmethod.Squirrel.plist",
    "~/Library/Preferences/im.rime.inputmethod.Squirrel.plist",
  ]
end
