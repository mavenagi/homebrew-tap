require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v1.12.0/magi-1.12.0-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "425ea25e63496ca4a9b1de1f5cce13305ec3fc7d89c9013fe8e70789b85f115f"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
