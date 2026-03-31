cask "readout" do
  version "0.1.2"

  if Hardware::CPU.arm?
    url "https://github.com/vaclavik-xyz/readOutRS/releases/download/v0.1.2/readOut-macos-arm64.dmg"
    sha256 "ece7c4c628446e88491014dbb321e16a2d9e9fce6a9b7576115dd5bbec1f8f5d"
  else
    url "https://github.com/vaclavik-xyz/readOutRS/releases/download/v0.1.2/readOut-macos-x64.dmg"
    sha256 "def24dc73c04ea91dcb16778d4c5b32cb62c78dfed2c24c4111f1b04df572557"
  end

  name "readOut"
  desc "Real-time measurement dashboard for SCPI multimeters and USB-C power meters"
  homepage "https://github.com/vaclavik-xyz/readOutRS"

  app "readOut.app"

  zap trash: [
    "~/Library/Preferences/xyz.vaclavik.readout.plist",
  ]
end
