cask "aniaan-chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.15"
  sha256 arm:   "c8b93e14fc73892004ea1454ba2c5e836aec4bd12fea3058e9c7345e516b379d",
          intel: "da8c628c5ddb6e22b21f340828641bd4bc8c01a119ed289723eab44d614cbc6c"

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
