cask "readout" do
  version "0.1.2"

  if Hardware::CPU.arm?
    url "https://github.com/vaclavik-xyz/readOutRS/releases/download/v0.1.2/readOut-macos-arm64.dmg"
    sha256 "365134b172daa5c9169e6e119b567b68c79125ad451ba08184ef4a95ce203c15"
  else
    url "https://github.com/vaclavik-xyz/readOutRS/releases/download/v0.1.2/readOut-macos-x64.dmg"
    sha256 "228e76c5cb9d402899ad6c92f67c04daa02216a86123fff80497adb9f6bb8fbf"
  end

  name "readOut"
  desc "Real-time measurement dashboard for SCPI multimeters and USB-C power meters"
  homepage "https://github.com/vaclavik-xyz/readOutRS"

  app "readOut.app"

  zap trash: [
    "~/Library/Preferences/xyz.vaclavik.readout.plist",
  ]
end
