require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://github.com/mavenagi/magi-cli/"
  url "https://github.com/mavenagi/magi-cli/releases/download/v0.13.1/magi-0.14.0.tar.gz", :using => MagiDownloadStrategy
  sha256 "f8cd2e032a47f6ed08c2890e647266afbaae03818e2cf65aba87649b2d66bfbd"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
