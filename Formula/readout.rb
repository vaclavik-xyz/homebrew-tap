class Readout < Formula
  desc "Real-time measurement dashboard for SCPI multimeters and USB-C power meters"
  homepage "https://github.com/vaclavik-xyz/readOutRS"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vaclavik-xyz/readOutRS/releases/download/v0.1.2/readOutRS-macos-arm64.tar.gz"
      sha256 "64668463177e5aec639088da9d7d36e611cb6d20b116c373a42cd0c95f92e58e"
    else
      url "https://github.com/vaclavik-xyz/readOutRS/releases/download/v0.1.2/readOutRS-macos-x64.tar.gz"
      sha256 "7d093fb8e3a325658b076c671a2f9412a3320140eda7c31ec5c7164cf8f60929"
    end
  end

  on_linux do
    url "https://github.com/vaclavik-xyz/readOutRS/releases/download/v0.1.2/readOutRS-linux-x64.tar.gz"
    sha256 "ca394837eb87d6d70fe15e8a910052444d2b4f3f010a8d9f6408381f50b08047"
  end

  def install
    bin.install "readout-gui" if File.exist?("readout-gui")
    bin.install "readout-tui" if File.exist?("readout-tui")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/readout-tui --version 2>&1", 0)
  end
end
