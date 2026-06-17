cask "diktator" do
  version "2.0.2"
  sha256 "e6954dd3d222963739bb9c8006bbc19b405bdb01fc421e38266889a56357de02"

  url "https://github.com/vaclavik-xyz/diktator-releases/releases/download/v#{version}/Diktator.dmg",
      verified: "github.com/vaclavik-xyz/diktator-releases/"
  name "Diktátor"
  desc "Czech-first voice dictation with optional AI cleanup"
  homepage "https://diktator-cloud.vercel.app/"

  depends_on macos: :sonoma

  app "Diktator.app"

  # The app is ad-hoc signed (not yet Apple-notarized), so a downloaded copy is
  # quarantined and Gatekeeper would block first launch. Strip the quarantine
  # attribute after install so it opens normally.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Diktator.app"]
  end

  uninstall quit: "app.diktator.mac"

  zap trash: [
    "~/Library/Application Support/Pindrop",
    "~/Library/Caches/app.diktator.mac",
    "~/Library/HTTPStorages/app.diktator.mac",
    "~/Library/Preferences/app.diktator.mac.plist",
  ]
end
