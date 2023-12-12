require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://github.com/mavenagi/magi/"
  url "https://github.com/mavenagi/magi/releases/download/v0.10.1/magi-0.10.1.tar.gz", :using => MagiDownloadStrategy
  sha256 "c98274857e2d005f39a13fd03237a4a7e42ffd8b39f2240d3c0dd4ee46e7bdbb"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
