cask "readout" do
  version "0.1.0"

  if Hardware::CPU.arm?
    url "https://github.com/vaclavik-xyz/readOutRS/releases/download/v0.1.0/readOut-macos-arm64.dmg"
    sha256 "d58f07ef7ab6e7802e66b3a6a67778f3122859f9b0a3416bcd1b686c54891373"
  else
    url "https://github.com/vaclavik-xyz/readOutRS/releases/download/v0.1.0/readOut-macos-x64.dmg"
    sha256 "b33c7207cbd9f91b160a86d9a207f8e738186527cce94bd686847dd12ebcedb9"
  end

  name "readOut"
  desc "Real-time measurement dashboard for SCPI multimeters and USB-C power meters"
  homepage "https://github.com/vaclavik-xyz/readOutRS"

  app "readOut.app"

  zap trash: [
    "~/Library/Preferences/xyz.vaclavik.readout.plist",
  ]
end
