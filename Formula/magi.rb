require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://github.com/mavenagi/magi-cli/"
  url "https://github.com/mavenagi/magi-cli/releases/download/v0.17.2/magi-0.17.2.tar.gz", :using => MagiDownloadStrategy
  sha256 "53a15a7e56eb7eb9dd5d8ed90c6fe0bb5a4c0b577d3e2fef7792984bae97761c"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
