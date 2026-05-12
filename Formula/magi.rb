require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v1.1.0/magi-1.1.0-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "297f372c1a9c0b3a304ff9356879f90ee8df860e0af9310777d00b387ecec2fa"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
