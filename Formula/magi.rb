require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://github.com/mavenagi/magi-cli/"
  url "https://github.com/mavenagi/magi-cli/releases/download/v0.17.3/magi-0.17.3.tar.gz", :using => MagiDownloadStrategy
  sha256 "d01e188ee96086b8d2cc366b1d4fe9cfbfbf10286341e1b07a33cf2f99c7fe7d"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
