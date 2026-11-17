require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v2.11.0/magi-2.11.0-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "09dfb846a20a5e0f3c44ceee8a5e4011f1d2b61df9238dab6110fe521772c366"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
