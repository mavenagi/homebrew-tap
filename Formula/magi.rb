require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v2.5.0/magi-2.5.0-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "c0380df33ca8e834861ccdd0cee3850c4f6850674605e5ddcde9494e06a9984f"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
