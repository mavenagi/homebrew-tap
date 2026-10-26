require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v2.9.1/magi-2.9.1-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "802abf2b9ee1fbc45d724e9545a1576d7743187d79dd7823c4af321104a0853a"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
