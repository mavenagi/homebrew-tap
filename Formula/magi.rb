require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v2.12.0/magi-2.12.0-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "3c3fb6b41bb8c1b603defb20f07c38ec9b0306b07dfc0eb9c8373cfb3e2c8121"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
