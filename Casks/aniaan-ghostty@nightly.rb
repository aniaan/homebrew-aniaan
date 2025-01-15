cask "aniaan-ghostty@nightly" do
  version "nightly"
  sha256 :no_check
  depends_on macos: ">= :ventura"

  name "aniaan-ghostty@nightly"
  url "https://github.com/ghostty-org/ghostty/releases/download/tip/Ghostty.dmg"
  desc "aniaan cask ghostty nightly build"

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
