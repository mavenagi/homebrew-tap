require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v1.6.0/magi-1.6.0-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "1a9901e44220ccddc841db128d63ae2bce54cd5a5a4756bb294dfb3837d161d7"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
