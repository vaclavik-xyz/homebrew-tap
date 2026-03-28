class Readout < Formula
  desc "Real-time measurement dashboard for SCPI multimeters and USB-C power meters"
  homepage "https://github.com/vaclavik-xyz/readOutRS"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/vaclavik-xyz/readOutRS/releases/download/v0.1.0/readOutRS-macos-arm64.tar.gz"
      sha256 "691c4372564121cab4521772a8cb6a38df6f44e0551a6aa07eff22b13e9eeb27"
    else
      url "https://github.com/vaclavik-xyz/readOutRS/releases/download/v0.1.0/readOutRS-macos-x64.tar.gz"
      sha256 "92f9aa380509c4cd432f8a546ae6dae0335c3ef1699f2fd28511b492fc943dea"
    end
  end

  on_linux do
    url "https://github.com/vaclavik-xyz/readOutRS/releases/download/v0.1.0/readOutRS-linux-x64.tar.gz"
    sha256 "8903f9c45316f35f462afbea21174caca5b1019bb9918505c933841a4349da97"
  end

  def install
    bin.install "readout-gui" if File.exist?("readout-gui")
    bin.install "readout-tui" if File.exist?("readout-tui")
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/readout-tui --version 2>&1", 0)
  end
end
