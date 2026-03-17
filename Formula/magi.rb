require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://github.com/mavenagi/magi-cli/"
  url "https://github.com/mavenagi/magi-cli/releases/download/v0.13.0/magi-0.13.0.tar.gz", :using => MagiDownloadStrategy
  sha256 "ff4a542da2c6c929094bd2d00949889b3896ae94e418c0a0764ca4fce5388bc1"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
