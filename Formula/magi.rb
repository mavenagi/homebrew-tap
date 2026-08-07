require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v1.19.0/magi-1.19.0-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "d99495d61c227627fad5d60113b288d90f8e0481d96364531fd73963c077fc69"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
