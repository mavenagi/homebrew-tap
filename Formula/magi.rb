require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://github.com/mavenagi/magi-cli/"
  url "https://github.com/mavenagi/magi-cli/releases/download/v0.17.4/magi-0.17.4.tar.gz", :using => MagiDownloadStrategy
  sha256 "da4cb408a57abf5891ad38cf6eca5b5f0b840e384129af2a3ba6dd447cd3f157"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
