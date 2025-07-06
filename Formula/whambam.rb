class Whambam < Formula
  desc "whambam: a simple CLI tool for web performance testing"
  homepage "https://github.com/cloudy-native/whambam.dev"
  license "MIT"
  head "https://github.com/cloudy-native/whambam.dev.git", branch: "main"
  
  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cloudy-native/whambam.dev/releases/download/v0.1.10/whambam-v0.1.10-aarch64-apple-darwin.tar.gz"
      sha256 "03a8f32d616424477c14fc4fb99410f609b6043a3c70cb3d5c1b3662b4783372"
    else
      url "https://github.com/cloudy-native/whambam.dev/releases/download/v0.1.10/whambam-v0.1.10-x86_64-apple-darwin.tar.gz"
      sha256 "6e04ad0580a68a2b8ac4c9fe0abca434501b7a57cdaab3518bd2339dd0f8c477"
    end
  end
  
  def install
    bin.install "whambam"
  end
  
  test do
    system "#{bin}/whambam", "--version"
  end
end
