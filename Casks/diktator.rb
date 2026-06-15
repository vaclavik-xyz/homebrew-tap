cask "diktator" do
  version "2.0.0"
  sha256 "24aaa3b5706fc663a7df0d5308756fe79ce3747abf3dcedb98be2a5994828378"

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
