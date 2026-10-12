class Metrognome < Formula
  desc "BPM and musical-key estimation from short audio clips"
  homepage "https://github.com/Jonas-Ross/metrognome"
  url "https://github.com/Jonas-Ross/metrognome/releases/download/v0.3.1/metrognome-0.3.1-universal-apple-darwin.tar.gz"
  sha256 "0b85ef63451d016607f837079538edc5893c30f3efe52889fb2d0c879d878942"
  license "MIT"

  depends_on :macos

  def install
    bin.install "metrognome"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/metrognome --version")
  end
end
