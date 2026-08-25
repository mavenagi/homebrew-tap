require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v2.0.2/magi-2.0.2-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "3bff7c470f5a50daf813c4145627fa9443729ba95f7bb4fcc7d3844d0f78cf7b"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
