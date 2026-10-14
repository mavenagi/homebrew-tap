require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v2.8.1/magi-2.8.1-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "4b8ab4d9a1fc72b3e456d3b388df175c3e1993cf4f9e245db2f1ae9f9fdbe6d2"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
