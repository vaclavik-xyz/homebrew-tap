class Readout < Formula
  desc "Real-time measurement dashboard for SCPI multimeters and USB-C power meters"
  homepage "https://github.com/vaclavik-xyz/readOutRS"
  version "0.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vaclavik-xyz/readOutRS/releases/download/v0.1.3/readOutRS-macos-arm64.tar.gz"
      sha256 "23873fe4f01e8e3a14172f85c7174774aeadd4fee2b0d0609fb7baa27e374a85"
    else
      url "https://github.com/vaclavik-xyz/readOutRS/releases/download/v0.1.3/readOutRS-macos-x64.tar.gz"
      sha256 "7c65e993e6a6bdf337d6f2aff0fc1b6de6e093aba989b1427e3ae997b7a7f67c"
    end
  end

  on_linux do
    url "https://github.com/vaclavik-xyz/readOutRS/releases/download/v0.1.3/readOutRS-linux-x64.tar.gz"
    sha256 "adac736f842d8b4485614a124df6ec7b120dc85919bb8179ef8d755a1493ef07"
  end

  def install
    bin.install "readout-gui" if File.exist?("readout-gui")
    bin.install "readout-tui" if File.exist?("readout-tui")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/readout-tui --version 2>&1", 0)
  end
end
