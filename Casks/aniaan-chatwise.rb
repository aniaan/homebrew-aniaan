cask "aniaan-chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.15"
  sha256 :no_check

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
