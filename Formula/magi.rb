require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://github.com/mavenagi/magi-cli/"
  url "https://github.com/mavenagi/magi-cli/releases/download/v0.17.0/magi-0.17.0.tar.gz", :using => MagiDownloadStrategy
  sha256 "20631faea9b25ddb53fc8240fd03f4fcbf480e757076197e5c9032dfbbb7e030"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
