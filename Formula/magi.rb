require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v2.0.0/magi-2.0.0-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "41f27480ba817c1885e129fb81d51f4d895612064a8c6a6060f6c1a56bb7bec6"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
