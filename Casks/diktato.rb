cask "diktato" do
  version "3.6.2"
  sha256 "92b1ad8c59bfaf9a57c637c1d90be0529b629fd45cd2e229d7f9bad05c5c279b"

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
