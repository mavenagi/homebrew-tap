require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v1.22.1/magi-1.22.1-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "75c409537aed68bee35a7d0cd5835fb6f94ff86c5cfce9f43c2921b614a3c7b8"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
