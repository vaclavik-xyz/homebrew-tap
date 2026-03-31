cask "readout" do
  version "0.1.1"

  if Hardware::CPU.arm?
    url "https://github.com/vaclavik-xyz/readOutRS/releases/download/v0.1.1/readOut-macos-arm64.dmg"
    sha256 "df03d12a4f742efc570073df61495fe41c6151ce2a05f1d69ae41e5c4241b93d"
  else
    url "https://github.com/vaclavik-xyz/readOutRS/releases/download/v0.1.1/readOut-macos-x64.dmg"
    sha256 "ae930e492447e88cdb98f60ee29a88841e6e9746c18b9cb7f09fbb6a95fd80d6"
  end

  name "readOut"
  desc "Real-time measurement dashboard for SCPI multimeters and USB-C power meters"
  homepage "https://github.com/vaclavik-xyz/readOutRS"

  app "readOut.app"

  zap trash: [
    "~/Library/Preferences/xyz.vaclavik.readout.plist",
  ]
end
