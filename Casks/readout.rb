cask "readout" do
  version "0.1.3"

  if Hardware::CPU.arm?
    url "https://github.com/vaclavik-xyz/readOutRS/releases/download/v0.1.3/readOut-macos-arm64.dmg"
    sha256 "9bd2a800c3188ab699d547556694bde2a18c55d379b3ee99486f52dce9f11cde"
  else
    url "https://github.com/vaclavik-xyz/readOutRS/releases/download/v0.1.3/readOut-macos-x64.dmg"
    sha256 "ff8ab741e3e7c67aa23373ef9dc95bd4b8f01a80d3adf81e7e17568410cc8676"
  end

  name "readOut"
  desc "Real-time measurement dashboard for SCPI multimeters and USB-C power meters"
  homepage "https://github.com/vaclavik-xyz/readOutRS"

  app "readOut.app"

  zap trash: [
    "~/Library/Preferences/xyz.vaclavik.readout.plist",
  ]
end
