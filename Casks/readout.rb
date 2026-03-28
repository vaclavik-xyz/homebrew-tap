cask "readout" do
  version "0.1.0"

  if Hardware::CPU.arm?
    url "https://github.com/vaclavik-xyz/readOutRS/releases/download/v0.1.0/readOut-macos-arm64.dmg"
    sha256 "6c74558bc88a0f3edda2a5e74ebcd259783bb8b5e31707427438215bf5e5d5cb"
  else
    url "https://github.com/vaclavik-xyz/readOutRS/releases/download/v0.1.0/readOut-macos-x64.dmg"
    sha256 "c95f187fa0d5b8a48419e0310f3582f1d491c2a6a1374ff5129cec2984931946"
  end

  name "readOut"
  desc "Real-time measurement dashboard for SCPI multimeters and USB-C power meters"
  homepage "https://github.com/vaclavik-xyz/readOutRS"

  app "readOut.app"

  zap trash: [
    "~/Library/Preferences/xyz.vaclavik.readout.plist",
  ]
end
