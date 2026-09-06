require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v2.1.1/magi-2.1.1-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "cbeea79ff13715ffbd06111020d90d25c7b90141d2abd0f38f1ff734cde6e2d1"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
