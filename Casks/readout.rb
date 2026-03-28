cask "readout" do
  version "0.1.2"

  if Hardware::CPU.arm?
    url "https://github.com/vaclavik-xyz/readOutRS/releases/download/v#{version}/readOut-macos-arm64.dmg"
    sha256 "PLACEHOLDER"
  else
    url "https://github.com/vaclavik-xyz/readOutRS/releases/download/v#{version}/readOut-macos-x64.dmg"
    sha256 "PLACEHOLDER"
  end

  name "readOut"
  desc "Real-time measurement dashboard for SCPI multimeters and USB-C power meters"
  homepage "https://github.com/vaclavik-xyz/readOutRS"

  app "readOut.app"

  zap trash: [
    "~/Library/Preferences/xyz.vaclavik.readout.plist",
  ]
end
