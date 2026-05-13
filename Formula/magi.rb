require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v1.2.0/magi-1.2.0-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "81dd8bd1c2d2330fc477a7837a3401c167e8867c8c2edac634706a5c556e022f"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
