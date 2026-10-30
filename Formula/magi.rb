require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v2.10.1/magi-2.10.1-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "fe5fceac27d748013bbe6154b5015ae70cbfc1deab3a7c1405916773c0b5e5bd"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
