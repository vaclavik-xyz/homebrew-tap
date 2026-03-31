class Readout < Formula
  desc "Real-time measurement dashboard for SCPI multimeters and USB-C power meters"
  homepage "https://github.com/vaclavik-xyz/readOutRS"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vaclavik-xyz/readOutRS/releases/download/v0.1.1/readOutRS-macos-arm64.tar.gz"
      sha256 "977bdb2118f66d7c3c7bb09d91cc39f733f1ff2e0f4f043c48bfc9650ecb10fa"
    else
      url "https://github.com/vaclavik-xyz/readOutRS/releases/download/v0.1.1/readOutRS-macos-x64.tar.gz"
      sha256 "76d6312fbeebc385661ce5d7735a716b07edf89844459f096d7db0e082dd2ef7"
    end
  end

  on_linux do
    url "https://github.com/vaclavik-xyz/readOutRS/releases/download/v0.1.1/readOutRS-linux-x64.tar.gz"
    sha256 "f3ee018f3fd56590a3858d2ff04012ac439a8525fc5788fa23ab91bff712f1e6"
  end

  def install
    bin.install "readout-gui" if File.exist?("readout-gui")
    bin.install "readout-tui" if File.exist?("readout-tui")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/readout-tui --version 2>&1", 0)
  end
end
