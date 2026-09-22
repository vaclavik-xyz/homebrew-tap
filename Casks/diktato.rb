cask "diktato" do
  version "3.6.3"
  sha256 "62e972b550f1cf85ef56b9ca3ac0a82e415e76f8b923a2566dc4fb2fa3e8bc9b"

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
