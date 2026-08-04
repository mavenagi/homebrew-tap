require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v1.18.2/magi-1.18.2-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "13de3f2bc95f89cf7dc55698462b859163e4ec10334207c0e52d42c071060014"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
