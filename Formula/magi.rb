require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://github.com/mavenagi/magi/"
  url "https://github.com/mavenagi/magi/releases/download/v0.11.1/magi-0.11.1.tar.gz", :using => MagiDownloadStrategy
  sha256 "732e5b803386cfeff44dc5f58a5511047a9989e40d412805285caeb12b9210ca"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
