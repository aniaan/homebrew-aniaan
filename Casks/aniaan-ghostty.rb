cask "aniaan-ghostty" do
  version "1.1.2"
  sha256 "d4ad01396834ca447fa5d084ebf6fb5d44957280faaf22ea473e9606751c48e1"
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
