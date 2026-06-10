require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v1.6.3/magi-1.6.3-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "b44b6ddae2e1472d6e682e0980b04a490dd67c96b750b5ce33631ab70195ff45"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
