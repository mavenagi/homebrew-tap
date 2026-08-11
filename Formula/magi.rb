require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v1.21.0/magi-1.21.0-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "8f53a87b0b996817181c106813f7d7c6db27c669725e6299e5184c546dde2f74"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
