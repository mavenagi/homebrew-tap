require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v1.10.0/magi-1.10.0-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "4efdda01587238a4a59c1f7fd838550cf9b3d2702f4f0ac7230667fc6ef65b7c"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
