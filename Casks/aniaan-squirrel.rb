cask "aniaan-squirrel" do
  version "1.0.3"
  sha256 "ceb45dde93fe31e090ca3ea982d90255ee59bd66225354d0750b56bfc2b3b0a4"

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
