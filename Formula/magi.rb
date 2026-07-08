require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v1.8.1/magi-1.8.1-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "a53e0c4437d3e8535eef741d1015a9e8d452f305240abd348e86857463d18b24"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
