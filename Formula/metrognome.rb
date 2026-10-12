class Metrognome < Formula
  desc "BPM and musical-key estimation from short audio clips"
  homepage "https://github.com/Jonas-Ross/metrognome"
  url "https://github.com/Jonas-Ross/metrognome/releases/download/v0.3.0/metrognome-0.3.0-universal-apple-darwin.tar.gz"
  sha256 "17d8e9292b304c0b1882a002c717b1140fb1957ebdd2d32807883828a37fa24c"
  license "MIT"

  depends_on :macos

  def install
    bin.install "metrognome"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/metrognome --version")
  end
end
