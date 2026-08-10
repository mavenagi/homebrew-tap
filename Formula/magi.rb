require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v1.20.0/magi-1.20.0-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "20f94a381de9775ee0022681fbe9586f8ab610009fe4db44291fb91a3e375a1e"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
