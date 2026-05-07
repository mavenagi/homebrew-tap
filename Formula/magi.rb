require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v1.0.0/magi-1.0.0-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "648081de4eee1f7dec83033a9c939000d5350a3338badc62b7911472a1d5255c"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
