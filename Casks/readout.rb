cask "readout" do
  version "0.1.0"

  if Hardware::CPU.arm?
    url "https://github.com/vaclavik-xyz/readOutRS/releases/download/v0.1.0/readOut-macos-arm64.dmg"
    sha256 "38a1e470bfeb230eb0542b054ae0b86ca931f533998a6c97dc9d53ea417adbb8"
  else
    url "https://github.com/vaclavik-xyz/readOutRS/releases/download/v0.1.0/readOut-macos-x64.dmg"
    sha256 "e018fb28ead1c1b6cad84e6fbca6c47f322d53749a07a6db9adc4f8864a36547"
  end

  name "readOut"
  desc "Real-time measurement dashboard for SCPI multimeters and USB-C power meters"
  homepage "https://github.com/vaclavik-xyz/readOutRS"

  app "readOut.app"

  zap trash: [
    "~/Library/Preferences/xyz.vaclavik.readout.plist",
  ]
end
