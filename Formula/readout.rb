class Readout < Formula
  desc "Real-time measurement dashboard for SCPI multimeters and USB-C power meters"
  homepage "https://github.com/vaclavik-xyz/readOutRS"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vaclavik-xyz/readOutRS/releases/download/v0.1.0/readOutRS-macos-arm64.tar.gz"
      sha256 "cc301eee175c52c7e36b0af0502fd65aeef8040839ad8ff9594676c915d928d0"
    else
      url "https://github.com/vaclavik-xyz/readOutRS/releases/download/v0.1.0/readOutRS-macos-x64.tar.gz"
      sha256 "3b2e50428440cb1a125c780bd19c428dca72a740c9e775e1ea114d8d9b95d04f"
    end
  end

  on_linux do
    url "https://github.com/vaclavik-xyz/readOutRS/releases/download/v0.1.0/readOutRS-linux-x64.tar.gz"
    sha256 "80b49eafef07f631f42fd27a57de1223fb9ea4a0897e45e9ef2bb60ecfd2e436"
  end

  def install
    bin.install "readout-gui" if File.exist?("readout-gui")
    bin.install "readout-tui" if File.exist?("readout-tui")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/readout-tui --version 2>&1", 0)
  end
end
