class Whambam < Formula
  desc "whambam: a simple CLI tool for web performance testing"
  homepage "https://github.com/cloudy-native/whambam.dev"
  license "MIT"
  head "https://github.com/cloudy-native/whambam.dev.git", branch: "main"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cloudy-native/whambam.dev/releases/download/v0.1.5/whambam-v0.1.7-aarch64-apple-darwin.tar.gz"
      sha256 "sha256:26150f085d15a3477e86a6939a34600334548f9808d5d4e8e49a2e25ddee0695"
    else
      url "https://github.com/cloudy-native/whambam.dev/releases/download/v0.1.5/whambam-v0.1.7-x86_64-apple-darwin.tar.gz"
      sha256 "sha256:9f4ebe80ac463380ebd2e76c414da0b7ca48c617db18bff7de591337202257f8"
    end
  end

  def install
    bin.install "whambam"
  end

  test do
    system "#{bin}/whambam", "--version"
  end
end
