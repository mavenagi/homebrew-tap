require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v2.2.0/magi-2.2.0-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "fc10a3c5ddfab2f5c8c76b32eee2e5b980901ec29aed431b59f45776abce3d67"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
