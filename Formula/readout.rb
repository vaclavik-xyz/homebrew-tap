class Readout < Formula
  desc "Real-time measurement dashboard for SCPI multimeters and USB-C power meters"
  homepage "https://github.com/vaclavik-xyz/readOutRS"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vaclavik-xyz/readOutRS/releases/download/v0.1.2/readOutRS-macos-arm64.tar.gz"
      sha256 "db5dd3e0a49ad0e9c040724fd5aa0169b667dfc8bf13748443e4ab5123882767"
    else
      url "https://github.com/vaclavik-xyz/readOutRS/releases/download/v0.1.2/readOutRS-macos-x64.tar.gz"
      sha256 "4989bd0d4ba9a0b1336be1273a9c9057a76dd2be548cf0b9a30f1efa927e8aaa"
    end
  end

  on_linux do
    url "https://github.com/vaclavik-xyz/readOutRS/releases/download/v0.1.2/readOutRS-linux-x64.tar.gz"
    sha256 "41c62e42efb1d9ff25ea331620f0dca0b6609edd1de248aae98064ad12d55f5f"
  end

  def install
    bin.install "readout-gui" if File.exist?("readout-gui")
    bin.install "readout-tui" if File.exist?("readout-tui")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/readout-tui --version 2>&1", 0)
  end
end
