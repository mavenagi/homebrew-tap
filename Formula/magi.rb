require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v2.4.2/magi-2.4.2-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "117e401915e899d6c3d31299b829262eb51d4d226a014411e8c45b2ff589bad8"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
