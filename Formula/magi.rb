require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v2.7.3/magi-2.7.3-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "c9048bd6537d9d0a1d13d79398712742276922f69d9071e2aa2305a7c3688cfc"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
