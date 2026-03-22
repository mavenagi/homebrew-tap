require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://github.com/mavenagi/magi-cli/"
  url "https://github.com/mavenagi/magi-cli/releases/download/v0.15.1/magi-0.15.1.tar.gz", :using => MagiDownloadStrategy
  sha256 "c4c197cccd10bfb9b424221a67d67d6ac7ac5d9467c7e45b54a0483fa0b3586f"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
