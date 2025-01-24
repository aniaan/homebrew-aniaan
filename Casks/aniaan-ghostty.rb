cask "aniaan-ghostty" do
  version "1.0.1"
  sha256 "400f68cbd1172d215bcdc4726ca33c0b19819d462130bf36c38f02fb48274663"
  depends_on macos: ">= :ventura"

  name "aniaan-ghostty"
  url "https://release.files.ghostty.org/#{version}/Ghostty.dmg"
  desc "aniaan cask ghostty"

  livecheck do
    skip "Development version"
  end

  app "Ghostty.app"

  binary "#{appdir}/Ghostty.app/Contents/MacOS/ghostty"

  binary "#{appdir}/Ghostty.app/Contents/Resources/zsh/site-functions/_ghostty",
         target: "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_ghostty"

  manpage "#{appdir}/Ghostty.app/Contents/Resources/man/man1/ghostty.1"
  manpage "#{appdir}/Ghostty.app/Contents/Resources/man/man5/ghostty.5"

  zap trash: [
    "~/Library/Application Support/com.mitchellh.ghostty",
    "~/Library/Caches/com.mitchellh.ghostty",
    "~/Library/HTTPStorages/com.mitchellh.ghostty",
    "~/Library/Preferences/com.mitchellh.ghostty.plist",
    "~/Library/Saved Application State/com.mitchellh.ghostty.savedState",
    "~/Library/WebKit/com.mitchellh.ghostty",
  ]

end
