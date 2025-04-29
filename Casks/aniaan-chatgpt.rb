cask "aniaan-chatgpt" do
  version "latest"
  sha256 :no_check

  url "https://persistent.oaistatic.com/sidekick/public/ChatGPT.dmg",
      verified: "persistent.oaistatic.com/sidekick/public/"
  name "aniaan-chatgpt"
  desc "aniaan-chatgpt"
  homepage "https://chatgpt.com/"


  depends_on macos: ">= :sonoma"

  app "ChatGPT.app"

  uninstall quit: "com.openai.chat"

  zap trash: [
    "~/Library/Application Support/ChatGPT",
    "~/Library/Application Support/com.openai.chat",
    "~/Library/Caches/com.openai.chat",
    "~/Library/HTTPStorages/com.openai.chat",
    "~/Library/HTTPStorages/com.openai.chat.binarycookies",
    "~/Library/Preferences/com.openai.chat.*.plist",
    "~/Library/Preferences/com.openai.chat.plist",
    "~/Library/Saved Application State/com.openai.chat.savedState",
  ]
end
