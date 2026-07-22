cask "diktato" do
  version "3.1.0"
  sha256 "27701c9ed5eb3376463cfb8b6311e4ba27e73019cb5b01bc1bd511d39c676ce5"

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
