cask "aniaan-raycast" do
  arch arm: "arm", intel: "x86_64"

  version "1.88.4"
  sha256 arm:   "ab7a57fe63a5feef4a31c01fbd79b882260a8e74c1f74dcdd626ee6ef68ef54c",
          intel: "97ad4054ac7e6989a09d52bc77e6f2da92a2bb570802e78b8a94633b30af89be"

  url "https://releases.raycast.com/releases/#{version}/download?build=#{arch}"


  name "aniaan-raycast"
  desc "aniaan-raycast"
  homepage "https://raycast.com/"

  depends_on macos: ">= :ventura"


  app "Raycast.app"

  uninstall quit:       "com.raycast.macos",
            login_item: "Raycast"

  zap trash: [
    "~/.config/raycast",
    "~/Library/Application Scripts/com.raycast.macos.BrowserExtension",
    "~/Library/Application Support/com.raycast.macos",
    "~/Library/Caches/com.raycast.macos",
    "~/Library/Caches/SentryCrash/Raycast",
    "~/Library/Containers/com.raycast.macos.BrowserExtension",
    "~/Library/Cookies/com.raycast.macos.binarycookies",
    "~/Library/HTTPStorages/com.raycast.macos",
    "~/Library/Preferences/com.raycast.macos.plist",
    "~/Library/WebKit/com.raycast.macos",
  ]
end
