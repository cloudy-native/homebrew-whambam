class Whambam < Formula
  desc "whambam: a simple CLI tool for web performance testing"
  homepage "https://github.com/cloudy-native/whambam.dev"
  license "MIT"
  head "https://github.com/cloudy-native/whambam.dev.git", branch: "main"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cloudy-native/whambam.dev/releases/download/v0.1.12/whambam-v0.1.12-aarch64-apple-darwin.tar.gz"
      sha256 "efd47461a4d3718f90d364f984ad939f335e60a5fe848264c4854d508db5f4a7"
    else
      url "https://github.com/cloudy-native/whambam.dev/releases/download/v0.1.12/whambam-v0.1.12-x86_64-apple-darwin.tar.gz"
      sha256 "1e5f932d68f7fa92e34a5c91d0b87a97563add83e60487fe9bfe03e3e9f9c87b"
    end
  end
  
  def install
    bin.install "whambam"
  end
  
  test do
    system "#{bin}/whambam", "--version"
  end
end
