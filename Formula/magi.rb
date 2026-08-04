require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v1.18.3/magi-1.18.3-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "a36259a1a2c876c07459f17bef12d3df8336a779cbddee61d17e93e6204e762e"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
