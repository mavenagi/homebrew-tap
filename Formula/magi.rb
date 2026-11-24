require "formula"
require_relative "../magi_download_strategy.rb"

class Magi < Formula
  homepage "https://docs.mavenagi.com"
  url "https://github.com/mavenagi/highlander/releases/download/magi-v2.14.0/magi-2.14.0-macos.tar.gz", :using => MagiDownloadStrategy
  sha256 "8e6692437833b4291a7b101249b71b4f99dae66880f32758bce32ac8f816b67a"
  
  def install
    bin.install "magi"
  end
  
  test do
      system "#{bin}/magi --help"
  end
end
