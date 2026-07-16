require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v1.9.0/magi-1.9.0-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "511895d3a97f4462ec113481d45d610019620458911c8fffaa2fabc5491d4702"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
