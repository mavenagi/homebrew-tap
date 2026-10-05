require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v2.7.2/magi-2.7.2-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "4b6152e5839441055cd2d7059d6639a87eee1f9bfcb26bb4be17c6c92d7fab7b"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
