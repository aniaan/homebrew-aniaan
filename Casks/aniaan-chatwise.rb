cask "aniaan-chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.7"
  sha256 arm:   "f4983ac268d55e8f0198cfff5a0072585e8c327e968602c2834af8a2b6c11f88",
          intel: "af9021814f83d234159ec5692030291b28cf3f35ff267c0573b97514769472cc"

  url "https://github.com/egoist/chatwise-releases/releases/download/v#{version}/ChatWise_#{version}_#{arch}.dmg"


  name "aniaan-chatwise"
  desc "aniaan-chatwise"
  homepage "https://chatwise.app"

  depends_on macos: ">= :ventura"

  app "ChatWise.app"

  zap trash: [
    "~/Library/Caches/app.chatwise",
    "~/Library/Application Support/app.chatwise",
    "~/Library/WebKit/app.chatwise",
  ]

end
