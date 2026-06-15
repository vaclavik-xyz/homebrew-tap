cask "diktator" do
  version "2.0.1"
  sha256 "97c0e7b81550ef14fa0e6db66d52d7e7fa27eb8e7d609c23142b82d98a307a8e"

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
