cask "aniaan-raycast" do
  arch arm: "arm", intel: "x86_64"

  version "1.102.3"
  sha256 arm:   "adbebb4569afe3326ce28b06b7fe03e577d5dd94f561bc211c0844a8fac2c429",
           intel: "d42088aea0efee1d33ff8f57f54ace6de5a6c80cfef97a4c759e7c8a55b8c083"

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
