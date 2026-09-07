cask "diktato" do
  version "3.3.5"
  sha256 "7aefc94a8a1514602d439c271e8f0e67abda6c75c854239fc04da7fff2490560"

  url "https://github.com/vaclavik-xyz/diktato-releases/releases/download/v#{version}/Diktato.dmg",
      verified: "github.com/vaclavik-xyz/diktato-releases/"
  name "Diktāto"
  desc "Czech-first voice dictation with optional AI cleanup"
  homepage "https://diktato.com/"

  depends_on macos: :sonoma

  app "Diktāto.app"

  uninstall quit: "app.diktato.mac"

  zap trash: [
    "~/Library/Application Support/Diktato",
    "~/Library/Caches/app.diktato.mac",
    "~/Library/HTTPStorages/app.diktato.mac",
    "~/Library/Preferences/app.diktato.mac.plist",
  ]
end
