require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://github.com/mavenagi/magi-cli/"
  url "https://github.com/mavenagi/magi-cli/releases/download/v0.10.4/magi-0.10.4.tar.gz", :using => MagiDownloadStrategy
  sha256 "abcdef"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
