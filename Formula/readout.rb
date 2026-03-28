class Readout < Formula
  desc "Real-time measurement dashboard for SCPI multimeters and USB-C power meters"
  homepage "https://github.com/vaclavik-xyz/readOutRS"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vaclavik-xyz/readOutRS/releases/download/v0.1.0/readOutRS-macos-arm64.tar.gz"
      sha256 "4ab04b5252b49d174136e3f258855cba4c57f64d7eb0ab16a09cedb5bfbb5908"
    else
      url "https://github.com/vaclavik-xyz/readOutRS/releases/download/v0.1.0/readOutRS-macos-x64.tar.gz"
      sha256 "6413af456a337da25ee37eb6fa97f0138a1b0ed3d148dbd511add57dd80d4c5b"
    end
  end

  on_linux do
    url "https://github.com/vaclavik-xyz/readOutRS/releases/download/v0.1.0/readOutRS-linux-x64.tar.gz"
    sha256 "6f005da11431c28a9be27d0f3194e50f8172578f14e75bd9069b0e88910b7e61"
  end

  def install
    bin.install "readout-gui" if File.exist?("readout-gui")
    bin.install "readout-tui" if File.exist?("readout-tui")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/readout-tui --version 2>&1", 0)
  end
end
