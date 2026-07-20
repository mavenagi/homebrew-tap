require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v1.11.0/magi-1.11.0-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "2c1f6ad1186c39441e4625284dbad12047407a43188a4d63196e1e13c1756542"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
