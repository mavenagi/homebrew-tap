require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://github.com/mavenagi/magi/"
  url "https://github.com/mavenagi/magi/releases/download/v0.11.0/magi-0.11.0.tar.gz", :using => MagiDownloadStrategy
  sha256 "4a75a7a9ee0853076dff4e61f4e28893688949f4"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
