require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v2.7.0/magi-2.7.0-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "4e166fc631bab7040b872fca83eb63b4c9ec81183c5af7f8dc38617f2b201fe0"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
