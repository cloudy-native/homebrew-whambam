class Whambam < Formula
  desc "whambam: a simple CLI tool for web performance testing"
  homepage "https://github.com/cloudy-native/whambam.dev"
  license "MIT"
  head "https://github.com/cloudy-native/whambam.dev.git", branch: "main"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cloudy-native/whambam.dev/releases/download/v0.2.1/whambam-v0.2.1-aarch64-apple-darwin.tar.gz"
      sha256 "5cf0adb565484e7224291234511648030be00e45d7f63b6e1a99dc25f3671029"
    else
      url "https://github.com/cloudy-native/whambam.dev/releases/download/v0.2.1/whambam-v0.2.1-x86_64-apple-darwin.tar.gz"
      sha256 "1326b7580b35a940f494b3c78a103394637063770ab23d88e182b80a63662e0d"
    end
  end
  
  def install
    bin.install "whambam"
  end
  
  test do
    system "#{bin}/whambam", "--version"
  end
end
