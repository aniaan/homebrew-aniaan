cask "aniaan-surge" do
  version "latest"
  sha256 "3d10b83ed65448797d57a238729063abc6b704c183cffd51408ce54e87066079"

  url "https://dl.nssurge.com/mac/v6/Surge-latest.zip"
  name "aniaan-surge"
  desc "aniaan-surge"
  homepage "https://nssurge.com/"

  depends_on macos: ">= :monterey"

  app "Surge.app"

  uninstall launchctl: "com.nssurge.surge-mac.helper",
            delete:    "/Library/PrivilegedHelperTools/com.nssurge.surge-mac.helper"

  zap delete: [
    "~/Library/Application Support/com.nssurge.surge-mac",
    "~/Library/Application Support/Surge",
    "~/Library/Caches/com.nssurge.surge-mac*",
    "~/Library/HTTPStorages/com.nssurge.surge-mac",
    "~/Library/Logs/Surge",
    "~/Library/Preferences/com.nssurge.surge*",
    "~/Library/Saved Application State/com.nssurge.surge*",
  ]
end
