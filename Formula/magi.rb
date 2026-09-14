require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v2.3.0/magi-2.3.0-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "9c7c56b53813f8ab9bce6eb6793fb867f63f3ce2a4b59ebf7415e9369da77cbf"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
