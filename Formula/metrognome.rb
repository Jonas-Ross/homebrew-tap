class Metrognome < Formula
  desc "BPM and musical-key estimation from short audio clips"
  homepage "https://github.com/Jonas-Ross/metrognome"
  url "https://github.com/Jonas-Ross/metrognome/releases/download/v0.1.0/metrognome-0.1.0-universal-apple-darwin.tar.gz"
  sha256 "6e0a53aafbcca48085e1a4e4e204c1936f6757d69a294da6ee43086c46fc34a3"
  license "MIT"

  depends_on :macos

  def install
    bin.install "metrognome"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/metrognome --version")
  end
end
