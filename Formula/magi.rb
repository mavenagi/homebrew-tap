require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://github.com/mavenagi/magi/"
  url "https://github.com/mavenagi/magi/releases/download/v0.8.1/magi-0.8.1.tar.gz", :using => MagiDownloadStrategy
  sha256 "a65522553fd26e27eeca971880f605c589e3894f829a97609486e7a25d282d38"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
