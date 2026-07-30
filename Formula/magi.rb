require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v1.17.0/magi-1.17.0-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "927b1d263d3ae6ffff37bdd9393307b82690c27711fb8607f3167bbf1b788260"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
