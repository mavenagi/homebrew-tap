require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v1.13.0/magi-1.13.0-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "624891f8da9c9aa905514123db17f447d21e6bcac65c84aa1002b4ff517dc1bd"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
