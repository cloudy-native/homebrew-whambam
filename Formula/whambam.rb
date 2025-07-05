class Whambam < Formula
    desc "whambam: a simple tool for web performance testing"
    homepage "https://github.com/cloudy-native/whambam.dev"
    url "https://github.com/cloudy-native/whambam.dev/archive/refs/tags/v0.1.5.tar.gz"
    sha256 "274e9a0a149e4654a70712a34a09cab8e09a655200de02bf7cbc080c196d5ffb"
    license "MIT"
    head "https://github.com/cloudy-native/whambam.dev.git", branch: "main"
  
    depends_on "rust" => :build
  
    def install
      system "cargo", "install", *std_cargo_args
    end
  
    test do
      system "#{bin}/whambam", "--version"
    end
  end