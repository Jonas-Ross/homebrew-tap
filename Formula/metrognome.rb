class Metrognome < Formula
  desc "BPM and musical-key estimation from short audio clips"
  homepage "https://github.com/Jonas-Ross/metrognome"
  url "https://github.com/Jonas-Ross/metrognome/releases/download/v0.2.0/metrognome-0.2.0-universal-apple-darwin.tar.gz"
  sha256 "d4cb1abe923cc5757ccdeb08e3a4abbcdeeb4f7cc00b333fecf501ab7fbc0d88"
  license "MIT"

  depends_on :macos

  def install
    bin.install "metrognome"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/metrognome --version")
  end
end
