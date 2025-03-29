cask "aniaan-kitty" do
  version "0.41.0"
  sha256 "b51d8418323f4e81e2e7276e0255722014216d715db2923d0cd3eb5a96334533"

  url "https://github.com/kovidgoyal/kitty/releases/download/v#{version}/kitty-#{version}.dmg"
  name "aniaan-kitty"
  desc "aniaan-kitty"
  homepage "https://github.com/kovidgoyal/kitty"

  depends_on macos: ">= :ventura"


  app "kitty.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  kitty_shimscript = "#{staged_path}/kitty.wrapper.sh"
  binary kitty_shimscript, target: "kitty"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  kitten_shimscript = "#{staged_path}/kitten.wrapper.sh"
  binary kitten_shimscript, target: "kitten"

  preflight do
    File.write kitty_shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/kitty.app/Contents/MacOS/kitty' "$@"
    EOS
    File.write kitten_shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/kitty.app/Contents/MacOS/kitten' "$@"
    EOS
  end

  zap trash: [
    "~/.config/kitty",
    "~/Library/Caches/kitty",
    "~/Library/Preferences/kitty",
    "~/Library/Preferences/net.kovidgoyal.kitty.plist",
    "~/Library/Saved Application State/net.kovidgoyal.kitty.savedState",
  ]
end
