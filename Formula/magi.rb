require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v1.7.0/magi-1.7.0-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "49b236ee24aa36f3949868e4e1265bcedd52199f784ff22a19da680c28dd69ae"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
