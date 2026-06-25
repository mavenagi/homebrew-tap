require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v1.8.0/magi-1.8.0-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "4c52fbe772f2ba93693a0fb34bc328771ed018f558fe2819cefebc3dcc227b82"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
