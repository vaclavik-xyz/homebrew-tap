class Readout < Formula
  desc "Real-time measurement dashboard for SCPI multimeters and USB-C power meters"
  homepage "https://github.com/vaclavik-xyz/readOutRS"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vaclavik-xyz/readOutRS/releases/download/v0.1.0/readOutRS-macos-arm64.tar.gz"
      sha256 "e22f300304746ce6299cbc791f86c4a0f73de0ea99a9a05578d98a27544e3124"
    else
      url "https://github.com/vaclavik-xyz/readOutRS/releases/download/v0.1.0/readOutRS-macos-x64.tar.gz"
      sha256 "f9fa5c6cbe71847ea9af90883dd51b1694ff4b01a663f0cc788aa78d11941257"
    end
  end

  on_linux do
    url "https://github.com/vaclavik-xyz/readOutRS/releases/download/v0.1.0/readOutRS-linux-x64.tar.gz"
    sha256 "ddfdebd5a805126f496d1ead51af052e81f1d68c208e76930eac01721c8d2e8b"
  end

  def install
    bin.install "readout-gui" if File.exist?("readout-gui")
    bin.install "readout-tui" if File.exist?("readout-tui")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/readout-tui --version 2>&1", 0)
  end
end
