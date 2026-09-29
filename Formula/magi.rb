require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v2.6.0/magi-2.6.0-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "c90b78dd4b127c6d263c96a72e67e0397a885dc2a0a29c8487830caff1052877"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
