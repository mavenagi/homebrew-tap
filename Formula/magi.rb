require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v1.3.0/magi-1.3.0-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "bea5054634cb1eebac3f0098835a112bb7e11839c7985379d0fc40148043bd82"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
