require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v1.6.2/magi-1.6.2-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "00541fd37b18b516f227674361d2a39c9f5f410a843a7db94f7fa4dfd1b05992"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
