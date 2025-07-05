class Whambam < Formula
    desc "whambam: a simple tool for web performance testing"
    homepage "https://github.com/cloudy-native/whambam.dev"
    url "https://github.com/cloudy-native/whambam.dev/archive/refs/tags/v0.1.4.tar.gz"
    sha256 "3ab1b2690615cf91f486843e0ec5cadaa168699e5cc8ed03835392eb075af8da"
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