require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v1.4.1/magi-1.4.1-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "513b068d546e71d0eb8413d73c20a8348b7dc3649baaa7c57dde9120f0a9b062"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
