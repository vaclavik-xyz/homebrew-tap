cask "readout" do
  version "0.1.0"

  if Hardware::CPU.arm?
    url "https://github.com/vaclavik-xyz/readOutRS/releases/download/v0.1.0/readOut-macos-arm64.dmg"
    sha256 "45fb70a6fd44034845437ba9b5e02f9ea0f711ff665b4cb2e6f41d34c372dd90"
  else
    url "https://github.com/vaclavik-xyz/readOutRS/releases/download/v0.1.0/readOut-macos-x64.dmg"
    sha256 "ee242e3ca9bb66e88b41323eb0a8d1b08dffaa839927509bb0b66b685f685b13"
  end

  name "readOut"
  desc "Real-time measurement dashboard for SCPI multimeters and USB-C power meters"
  homepage "https://github.com/vaclavik-xyz/readOutRS"

  app "readOut.app"

  zap trash: [
    "~/Library/Preferences/xyz.vaclavik.readout.plist",
  ]
end
