cask "aniaan-chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.17"
  sha256 arm:   "faeca3c4d2ec16792c06e627b376d47d94fbbb3d82f5176b1d7f34e6be0e9056",
          intel: "afbd74573d261ff4f28c2ac30a1f787b6f67640a5127475a265141183bb1df6a"

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
