cask "diktato" do
  version "3.3.0"
  sha256 "12b0bcc63f999a8adf6548e32871f84d71a8452122726609b5ed21cc5c03a2e1"

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
