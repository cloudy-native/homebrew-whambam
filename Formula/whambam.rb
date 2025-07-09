class Whambam < Formula
  desc "whambam: a simple CLI tool for web performance testing"
  homepage "https://github.com/cloudy-native/whambam.dev"
  license "MIT"
  head "https://github.com/cloudy-native/whambam.dev.git", branch: "main"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cloudy-native/whambam.dev/releases/download/v0.2.0/whambam-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "d593c240599a2f82a9015a3ad5f40c6e9efdd92bb81027dc94ddfa51c72745e4"
    else
      url "https://github.com/cloudy-native/whambam.dev/releases/download/v0.2.0/whambam-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "2b64d21a918d2608944784432b416360018b6d4de722690146b2a60b3dc64afa"
    end
  end
  
  def install
    bin.install "whambam"
  end
  
  test do
    system "#{bin}/whambam", "--version"
  end
end
