require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://github.com/mavenagi/magi/"
  url "https://github.com/mavenagi/magi/releases/download/v0.1.1/magi-0.1.1.tar.gz", :using => MagiDownloadStrategy
  sha256 "abcdefg"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
