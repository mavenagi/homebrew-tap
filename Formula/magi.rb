require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://github.com/mavenagi/magi-cli/"
  url "https://github.com/mavenagi/magi-cli/releases/download/v0.18.1/magi-0.18.1.tar.gz", :using => MagiDownloadStrategy
  sha256 "a333e9d1de4a986c6b24058ff3cdadbf1a197ef59612cb5482f8b4d017f73881"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
